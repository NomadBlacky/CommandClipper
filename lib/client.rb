#! /user/bin/env ruby
# coding: utf-8

require 'yaml'

module CommandClipper
  class Client

    def initialize(tmp_file_path)
      @tmp_file = File.new(tmp_file_path, "w+")
    end

    def load_commands()
      @commands = YAML.load_documents(File.new(Config.instance.save_file_path))
    end
    
  end
end
