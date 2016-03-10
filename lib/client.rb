#! /user/bin/env ruby
# coding: utf-8

require 'yaml'

module CommandClipper
  class Client

    def initialize(tmp_file_path, config)
      @tmp_file = File.new(tmp_file_path, "w+")
      @config = config
    end

    def load(file_path)
      @command_map = YAML.load_file(File.new(file_path))
    end
    
  end
end
