require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module Mutterapp
  class Application < Rails::Application
    config.load_defaults 5.2
  end
end

module App
  class Application < Rails::Application
    config.generators.template_engine = :slim # change erb to slim
  end
end
