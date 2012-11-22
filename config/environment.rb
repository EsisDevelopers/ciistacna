# Load the rails application
require File.expand_path('../application', __FILE__)

ActiveSupport::Deprecation.silence do
  Selfcare::Application.initialize!
end

# Initialize the rails application
Ciistacna::Application.initialize!


