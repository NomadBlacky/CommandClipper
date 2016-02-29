#! /user/bin/env ruby
# coding: utf-8

require 'yaml'


class CommandClipper

  attr_reader :var_name, :config_file

  def initialize(var_name, config_file)
    @var_name = var_name
    @config_file = config_file
  end
  
end


def main
  var_name = ARGV[0]
  cc = CommandClipper.new(var_name, File.new(File.dirname(__FILE__) + "/commands.yaml"))
  p cc.var_name
  p cc.config_file
  File.open(File.dirname(__FILE__) + "/.cmd.tmp", "w+") do |f|
    f.write "echo success"
  end
end
main()
