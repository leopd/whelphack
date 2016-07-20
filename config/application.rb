require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module Whelphack
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    config.foursquare_client_id = '3FSBWXOO5YAU5SCU4ER1JW5QO3JECT3PPUICXL05EPFAP0WF'
    config.foursquare_client_secret = 'XCE11ZYLMNQB204QENFUT4NBDMZJFUSLJCI2HQNQFIJJBWBC'

    config.googlemaps_api_key = 'AIzaSyBWLp2UE0TZ1E7dI9DszE7Zzn4nLr6Etl8'
  end
end
