FROM ruby:2.6.0

RUN apt-get update && apt-get install -y git

WORKDIR /home 

RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt-get install -y nodejs

RUN git clone https://github.com/docker-hy/rails-example-project .

RUN gem install bundler
RUN bundle install


#ENV RAILS_ENV=production
RUN rails db:migrate
RUN rake assets:precompile

#ENV RAILS_LOG_TO_STDOUT=true

EXPOSE 3000
ENTRYPOINT rails s
