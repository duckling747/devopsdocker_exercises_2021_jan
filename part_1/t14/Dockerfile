FROM ruby:2.6
RUN gem install bundler & (apt update && apt install -y nodejs npm)
COPY rails-example-project/ .
EXPOSE 3000
ENV SECRET_KEY_BASE=salainen
RUN bundle install && rails db:migrate RAILS_ENV=production && rake assets:precompile
CMD ["rails", "s", "-e", "production"]
