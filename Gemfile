source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

gem 'rails', '~> 6.1.4'
gem 'pg', '~> 1.2.3'
gem 'puma', '~> 5.6.2'
gem 'uglifier', '~> 4.2.0'
gem 'coffee-rails', '~> 5.0.0'
gem 'jquery-rails', '~> 4.4.0'
gem 'nokogiri', '~> 1.13', '>= 1.13.3'
gem 'friendly_id', '~> 5.4.2'
gem 'devise', '~> 4.8.1'
gem 'bootstrap-sass', '~> 3.4.1'
gem 'sassc-rails', '~> 2.1.2'
gem 'sprockets-rails', '~> 3.4.2'
gem 'activestorage-validator', '~> 0.2.0'
gem 'aws-sdk-s3', '~> 1.112'

#Need to process image variants
gem 'image_processing', '~> 1.12', '>= 1.12.1'

# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5.2.1'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
#gem 'jbuilder', '~> 2.11.5'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Mini Magick to resize images
#gem 'mini_magick', '~> 4.11.0'

#gem 'image_processing', '~> 1.2'
#gem 'rmagick', '~> 4.2', '>= 4.2.4'


# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '~> 4.2.0'
  gem 'listen', '~> 3.7.1'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring', '~> 2.1.1'
  gem 'spring-watcher-listen', '~> 2.0.1'
  gem 'derailed_benchmarks'
#  gem 'capistrano', '~> 3.16.0'
#  gem 'capistrano-rbenv', '~> 2.2.0'
#  gem 'capistrano-rails', '~> 1.6.1'
#  gem 'capistrano-bundler', '~> 2.0.1'
#  gem 'capistrano3-puma', '~> 5.2.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 3.36.0'
  gem 'selenium-webdriver', '~> 4.1.0'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper', '~> 2.1.1'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
#gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
