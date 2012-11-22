# Load the rails application
require File.expand_path('../application', __FILE__)

require 'rails/all'

# Silence deprecation warnings until Heroku stops injecting plugins into
# vendor/plugins
if Rails.env.production?
  ActiveSupport::Deprecation.silenced = true
end

# Initialize the rails application
Ciistacna::Application.initialize!


