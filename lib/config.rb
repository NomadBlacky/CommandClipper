#! /user/bin/env ruby
# coding: utf-8

require 'singleton'
require 'yaml'

module CommandClipper

  class Config
    
    include Singleton

    attr_reader :database

    def initialize
      @config_file = YAML.load_file($CMDC_ROOT + "/config/config.yaml")
      @database = SQLite3::Database.new(@config_file["database"]["file"])
    end
    
  end
  
end
