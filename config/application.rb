require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_model_serializers"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_mailbox/engine"
require "action_text/engine"
require "action_view/railtie"
require "action_cable/engine"
require "rails/test_unit/railtie"
require "sidekiq/web"

# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Notifyer
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    config.active_job.queue_adapter = :sidekiq

    config.api_only = true

    config.autoload_paths += %W(
      #{config.root}/app/services
    )

    config.eager_load_paths += %W(
      #{config.root}/app/services
    )
  end
end
