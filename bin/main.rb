#! /user/bin/env ruby
# coding: utf-8

require 'command_clipper'

client = CommandClipper::Client.new(ARGV.shift)
cli = CommandClipper::CLI.new(client)
cli.start(ARGV.getopts)
