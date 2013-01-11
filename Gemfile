source :rubygems

def darwin_only(require_as)
  RUBY_PLATFORM.include?('darwin') && require_as
end

def linux_only(require_as)
  RUBY_PLATFORM.include?('linux') && require_as
end

gem 'rails', '3.2.11'
gem 'devise'
gem 'omniauth-twitter'
gem 'omniauth-facebook'
gem 'jquery-rails'
gem 'thin'
gem 'settingslogic'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

group :production do
  gem 'pg'
end

group :test, :development do
  gem 'pry-rails'
  gem 'rspec-rails'
  gem 'capybara'
  gem 'factory_girl_rails'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'sqlite3'
  gem 'guard-rspec'
  gem 'rb-fsevent', require: darwin_only('rb-fsevent')
  gem 'growl', require: darwin_only('growl')
  gem 'rb-inotify', require: linux_only('rb-inotify')
end

group :test do
  gem 'shoulda-matchers'
end

