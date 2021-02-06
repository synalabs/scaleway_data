# overload memoist so we never hit the cache for testing
require "memoist"
module Memoist
  def memoize(*)
  end
end

require "bundler/setup"
require "scaleway_data"

module Helpers
  def reset_env!
    ENV['SCW_DEFAULT_PROJECT_ID'] = ENV['SCW_DEFAULT_PROJECT_ID'] = ENV['SCW_DEFAULT_ZONE'] = nil
  end
end

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.include Helpers
  config.before :each do
    reset_env!
  end
end
