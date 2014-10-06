require File.expand_path('../boot', __FILE__)
require 'rails/all'

Bundler.require(:default, :assets, Rails.env)

module LabsNet
  class Application < Rails::Application
    config.time_zone = 'Novosibirsk'
    config.i18n.available_locales = [:ru]
    config.i18n.default_locale = :ru
    config.i18n.locale = :ru
    config.action_mailer.default_url_options = {
      :host => 'tomskmedstat.ru',
      :port => ''
    }
    config.autoload_paths += %W(#{config.root}/lib)
    config.autoload_paths += Dir["#{config.root}/lib/**/"]
    config.assets.paths << Rails.root.join("app", "assets", "fonts")
  end
end
