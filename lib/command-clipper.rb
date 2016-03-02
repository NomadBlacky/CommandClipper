#! /user/bin/env ruby
# coding: utf-8

require 'yaml'

module CommandClipper
  class Client

    def initialize(tmp_file_path, commands_file_path=nil)
      @tmp_file = File.new(tmp_file_path, "w+")
      self.load(commands_file_path) if commands_file_path
    end

    def load(file_path)
      @command_map = YAML.load_file(File.new(file_path))
    end
    
  end
end

def main
  cc = CommandClipper::Client.new(ARGV[0], ARGV[1])
  cc.instance_eval { p @command_map }
end

main()
