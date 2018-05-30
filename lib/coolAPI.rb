$LOAD_PATH.unshift File.expand_path(File.dirname(__FILE__))
require 'rubygems'
require 'bundler/setup'
Bundler.require(:default)


module Coolapi
  module Utils
    def self.get_env
      ENV['COOL_API_HOSTNAME']
    end
  end
  module API
    autoload :Health, 'api/health.rb'
    class Mount < Grape::API
      mount Coolapi::API::Health
    end
  end
end
