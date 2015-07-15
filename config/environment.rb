# Initialize coveralls on Rails application.
require 'coveralls'
Coveralls.wear!('rails')

# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!
