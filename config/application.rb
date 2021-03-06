require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TicketSalesApp
  class Application < Rails::Application
    config.active_record.time_zone_aware_types = [:datetime]
    config.action_view.field_error_proc = Proc.new { |html_tag, instance|
      html_tag
    }
  end
end
