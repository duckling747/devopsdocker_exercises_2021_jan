FROM archlinux
RUN pacman -Syu --noconfirm npm nodejs rust java11-openjfx jdk11-openjdk openjdk11-doc rust-docs python python-django \
python-psycopg2 python-mysqlclient gcc icu bash
RUN useradd -ms /bin/bash worker
USER worker
WORKDIR /home/worker
EXPOSE 3000
EXPOSE 8000
EXPOSE 8080
