#! /user/bin/env ruby
# coding: utf-8

require 'command_clipper'

client = CommandClipper::Client.new(ARGV[0], CommandClipper::Config.instance)
cli = CommandClipper::CLI.new(client)
cli.start()
