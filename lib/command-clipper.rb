#! /user/bin/env ruby
# coding: utf-8

require 'yaml'


class CommandClipper

  attr_reader :commands_file

  def initialize(commands_file)
    @commands_file = commands_file
  end
  
end


def main
  var_name = ARGV[0]
  cc = CommandClipper.new(File.new(File.dirname(__FILE__) + "/../config/commands.yaml"))
end

main()
