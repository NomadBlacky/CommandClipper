#! /user/bin/env ruby
# coding: utf-8

require 'singleton'
require 'yaml'

module CommandClipper

  class Config
    
    include Singleton

    attr_reader :save_file_path

    def initialize
      @config_file = YAML.load_file($CMDC_ROOT + "/config/config.yaml")
      @save_file_path = @config_file["save_file"]
    end
    
  end
  
end
