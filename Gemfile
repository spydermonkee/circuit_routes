source 'https://rubygems.org'

gem 'rails', '4.1.8'
gem 'pg'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby
gem "paperclip", "~> 4.2"
gem 'font-awesome-rails'
gem 'haml'
gem 'jbuilder', '~> 2.0'
gem 'bower-rails'
gem 'sdoc', '~> 0.4.0',          group: :doc
gem 'devise'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
gem 'pry', group: [:development, :test]
gem 'pry-rails', group: [:development, :test]
gem 'debugger', group: [:development, :test]
gem "foreman"

group :production, :staging do
  gem "rails_12factor"
  gem "rails_stdout_logging"
  gem "rails_serve_static_assets"
end

group :test do
  gem 'factory_girl_rails'
  # gem 'vcr'
  # gem 'webmock'
  gem 'capybara'
  # gem 'poltergeist'
  # gem 'capybara-angular'
  # gem 'capybara-webkit', '1.2.0'
  # gem 'launchy'
  gem 'rspec-rails', '~> 2.14.1'
  gem 'shoulda-matchers', '~> 2.7.0', require: false
  gem 'selenium-webdriver', '~> 2.40.0'
end

group :development do
  gem 'spring'
  # gem 'railroady'
  # gem 'coffee-rails-source-maps'
end

