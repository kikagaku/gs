# Base image:
FROM rails:5

# Install dependencies
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

# Set an environment variable where the Rails app is installed to inside of Docker image:
ENV RAILS_ROOT /var/www/web
RUN mkdir -p $RAILS_ROOT

# Set working directory, where the commands will be ran:
WORKDIR $RAILS_ROOT

# Gems:
COPY rails/Gemfile Gemfile
COPY rails/Gemfile.lock Gemfile.lock
RUN gem install bundler
RUN bundle install

# Copy the main application.
COPY ./rails .

EXPOSE 3000

# CMD bundle exec unicorn -p 3000 -c $RAILS_ROOT/config/unicorn.rb -E production -D
