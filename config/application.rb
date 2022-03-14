require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module AlphaBlog
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end


class Application < Rails::Application
  # ... other config ...
  
  # no error div on labels
  add_error_div_proc = ActionView::Base.field_error_proc
  config.action_view.field_error_proc = ->(html_tag, instance) { 
    html_tag && html_tag.start_with?("<label") ? html_tag : add_error_div_proc.call(html_tag, instance) }

end