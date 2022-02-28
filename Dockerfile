FROM ruby:2.6.5
# Add yarn from repository
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
# Install required package
RUN apt-get update && apt-get install -qq -y build-essential libpq-dev ca-certificates curl libssl-dev postgresql-client openssh-server --fix-missing --no-install-recommends
RUN apt-get update
RUN apt-get upgrade -y
#RUN apt-get install -y nodejs
RUN apt-get install -y apt-utils
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install -y --no-install-recommends nodejs
RUN apt-get install -y yarn
#ActiveStorage Previewers Dependencies
RUN apt-get install -y poppler-utils
RUN apt-get install -y libreoffice
RUN apt-get install -y ffmpeg
# Create directory docker-rails
RUN mkdir /docker-rails
ENV RAILS_ENV="production"
# Change directory to docker-rails
WORKDIR /docker-rails
# Copy created Gemfile & Gemfile.lock to docker container
COPY Gemfile /docker-rails/Gemfile
COPY Gemfile.lock /docker-rails/Gemfile.lock
# Install dependencies
ENV BUNDLER_VERSION=2.3.8
RUN gem install bundler:2.3.8
RUN bundle install
COPY . /docker-rails
EXPOSE 3000 3035
CMD ["rails", "server", "-b", "0.0.0.0"]
