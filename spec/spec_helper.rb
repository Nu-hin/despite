$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'despite'
Dir['./spec/support/**/*.rb'].each { |f| require f }
