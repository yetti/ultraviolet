# frozen_string_literal: true

ENV["RAILS_ENV"] ||= "test"
require_relative "simplecov_helper"
require_relative "../config/environment"
require "rails/test_help"

require "factory_bot"
require "minitest/reporters"

# Dir[Rails.root.join("test/support/**/*")].each { |f| require f }

module ActiveSupport
  class TestCase
    # Run tests in parallel with specified workers
    parallelize(workers: :number_of_processors)

    # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
    fixtures :all

    include FactoryBot::Syntax::Methods

    Minitest::Reporters.use!(
      [
        Minitest::Reporters::SpecReporter.new,
        Minitest::Reporters::JUnitReporter.new
      ]
    ) unless ENV.fetch("RM_INFO", nil).present?
  end
end
