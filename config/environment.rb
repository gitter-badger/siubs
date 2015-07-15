# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize coveralls on Rails application.
require 'coveralls'
Coveralls.wear!('rails')

# Initialize the Rails application.
Rails.application.initialize!
