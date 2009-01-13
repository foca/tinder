require 'rubygems'
require 'uri'
require 'net/http'
require 'net/https'
require 'open-uri'
require 'hpricot'

require File.join(File.dirname(__FILE__), 'core_ext/object.rb')

Dir[File.join(File.dirname(__FILE__), 'tinder/**/*.rb')].sort.each { |lib| require lib }

module Tinder
  class Error < StandardError; end
  class SSLRequiredError < Error; end
end