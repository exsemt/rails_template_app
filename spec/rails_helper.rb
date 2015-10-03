ENV['RAILS_ENV'] ||= 'test'
abort('The Rails environment is running in production mode!') if Rails.env.production?

require File.expand_path('../../config/environment', __FILE__)
require 'spec_helper'
require 'rspec/rails'

ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.use_transactional_fixtures = true

  config.include FactoryGirl::Syntax::Methods
  config.before(:suite) do
    begin
      DatabaseCleaner.start
      FactoryGirl.lint
    ensure
      DatabaseCleaner.clean
    end
  end

  config.infer_spec_type_from_file_location!
end
