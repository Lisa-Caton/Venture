# require database cleaner and shoulda-matchers at the top level to work with RSpec
require File.expand_path('../../config/environment', __FILE__)
require 'database_cleaner'
require 'shoulda-matchers'
require 'factory_bot'
require 'database_cleaner'
require 'rspec/rails'


Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec

   # This require statement solves the uninitialized constant / NameError issue
    require "active_record"
    with.library :active_record
    with.library :active_model
  end
end

RSpec.configure do |config|
  # [...]
  # add `FactoryBot` methods
  config.include FactoryBot::Syntax::Methods

  # start by truncating all the tables but then use the faster transaction strategy the rest of the time.
  config.before(:suite) do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
  end

  # start the transaction strategy as examples are run
  config.around(:each) do |example|
    DatabaseCleaner.cleaning do
      example.run
    end
  end
  # [...]
end
