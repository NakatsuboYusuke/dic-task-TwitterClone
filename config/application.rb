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
    # change erb to slim
    config.generators.template_engine = :slim
    # set time_zone
    config.time_zone = 'Tokyo'
    config.active_record.default_timezone = :local
    # convert english_error_message to japaneses_error_message
    config.i18n.default_locale = :ja
  end
end
