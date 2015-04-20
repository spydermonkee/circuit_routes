source 'https://rubygems.org'

gem 'rails', '4.1.8'
gem 'pg'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem "paperclip", "~> 4.2"
gem 'font-awesome-rails'
gem 'haml'
gem 'jbuilder', '~> 2.0'
gem 'bower-rails'
gem 'sdoc', '~> 0.4.0',          group: :doc
gem 'devise'
gem 'angular-rails-templates'
gem "foreman"

gem 'pry', group: [:development, :test]
gem 'pry-rails', group: [:development, :test]
gem 'debugger', group: [:development, :test]
gem 'teaspoon', group: [:development, :test]
gem 'phantomjs', group: [:development, :test]

group :test do
  gem 'factory_girl_rails'
  # gem 'vcr'
  # gem 'webmock'
  gem 'capybara'
  # gem 'poltergeist'
  # gem 'capybara-angular'
  # gem 'capybara-webkit', '1.2.0'
  # gem 'launchy'
  gem 'rspec-rails', '~> 3.0'
  gem 'shoulda-matchers', '~> 2.7.0', require: false
  gem 'selenium-webdriver', '~> 2.40.0'
  gem 'database_cleaner', '~> 1.4.1'
end

group :development do
  gem 'spring'
  # gem 'railroady'
end

group :production, :staging do
  gem "rails_12factor"
  gem "rails_stdout_logging"
  gem "rails_serve_static_assets"
end

