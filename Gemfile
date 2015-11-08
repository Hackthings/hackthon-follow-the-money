source "http://rubygems.org"

ruby "2.2.3"
gem "rails", "4.2.4"

gem "autonumeric-rails"
gem "autoprefixer-rails"
gem "awesome_print"
gem "coffee-rails"
gem "email_validator"
gem "high_voltage"
gem "i18n-tasks"
gem "jbuilder"
gem "jquery-rails"
gem "local_time"
gem "pg"
gem "puma"
gem "sass-rails"
gem "simple_form"
gem "title"
gem "uglifier"
gem "foundation-rails"

group :development do
  gem "guard-livereload", require: false
  gem "foreman"
  gem "rack-livereload"
  gem "spring"
  gem "spring-commands-rspec"
  gem "web-console"
end

group :development, :test do
  gem "bundler-audit", require: false
  gem "byebug"
  gem "dotenv-rails"
  gem "factory_girl_rails"
  gem "http_logger"
  gem "pry-rails"
  gem "quiet_assets"
  gem "rspec-rails", "~> 3.3.0"
end

group :test do
  gem "capybara"
  gem "database_cleaner"
  gem "formulaic"
  gem "guard-rspec"
  gem "launchy"
  gem "rb-fsevent"
  gem "shoulda-matchers", require: false
  gem "simplecov", require: false
  gem "timecop"
  gem "webmock"
end

group :staging, :production do
  gem "passenger"
  gem "rack-canonical-host"
  gem "rack-timeout"
  gem "rails_12factor"
end
