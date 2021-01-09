#!/bin/sh


START_DIR=$(pwd)
mkdir building_dir
cd building_dir

clean_up () {
    echo "cleaning up..."
    cd $START_DIR
    rm -rf ./building_dir
}

echo "enter a valid git url and press [ENTER]:"
read URL

if ! git clone $URL; then
    echo >&2 "git clone fail"
    clean_up
    return 1
fi

echo "========================="
echo "STEP 1/3: CLONING SUCCESS"
echo "========================="
cd ./*

if ! docker build -t buildable .; then
    echo >&2 "docker build fail"
    clean_up
    return 1
fi

echo "=========================="
echo "STEP 2/3: BUILDING SUCCESS"
echo "=========================="
echo "enter a valid docker registry and press [ENTER]:"
read REG

if ! (docker login && docker image tag buildable $REG && docker image push $REG); then
    echo >&2 "docker push fail"
    clean_up
    return 1
fi

echo "======================="
echo "STEP 3/3: FINAL SUCCESS"
echo "======================="
clean_up
echo "exiting..."
return 0
