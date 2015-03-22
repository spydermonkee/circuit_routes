ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rspec/rails'
require 'rspec/autorun'
require 'shoulda-matchers'

Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }
Dir[Rails.root.join("spec/concerns/**/*.rb")].each { |f| require f }

ActiveRecord::Migration.check_pending! if defined?(ActiveRecord::Migration)

RSpec.configure do |config|
  config.color_enabled = true
  config.include FactoryGirl::Syntax::Methods
  config.use_transactional_fixtures = true
  # config.infer_base_class_for_anonymous_controllers = false
  config.order = "random"
  # config.filter_run_excluding :deploy => true
  # config.filter_run_excluding :browser => true
end