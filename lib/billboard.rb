require 'rubygems'

gem 'mash', '0.0.3'
require 'mash'

gem 'httparty', '0.4.3'
require 'httparty'

gem 'activesupport', '~> 2.3.2'
require 'activesupport'

class APIKeyNotSet   < StandardError; end

module Billboard
  
  # Get your API key from http://developer.billboard.com/apps/register
  def self.api_key
    raise APIKeyNotSet if @api_key.nil?
  
    @api_key
  end
  
  def self.api_key=(api_key)
    @api_key = api_key
  end
  
end

class Hash
  
  # Converts all of the keys to strings, optionally formatting key name
  def rubyify_keys!
    keys.each{|k|
      v = delete(k)
      new_key = k.to_s.underscore
      self[new_key] = v
      v.rubyify_keys! if v.is_a?(Hash)
      v.each{|p| p.rubyify_keys! if p.is_a?(Hash)} if v.is_a?(Array)
    }
    self
  end
  
end

directory = File.expand_path(File.dirname(__FILE__))

require File.join(directory, 'billboard', 'client')