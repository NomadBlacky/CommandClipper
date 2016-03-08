#! /user/bin/env ruby
# coding: utf-8

require 'command_clipper'

def main
  cc = CommandClipper::Client.new(ARGV[0], ARGV[1])
  cc.instance_eval { p @command_map }
end

main()
