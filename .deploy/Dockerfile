FROM ruby:2.6

COPY .deploy/.gemrc /root/.gemrc
RUN gem install rails -v 5.1.6
RUN gem install bundler
WORKDIR /app

# install Nodejs
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install -y -qq nodejs

COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN bundle install

EXPOSE 3000
CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]
