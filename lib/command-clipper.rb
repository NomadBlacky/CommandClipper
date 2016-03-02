#! /user/bin/env ruby
# coding: utf-8

require 'yaml'


class CommandClipper

  def initialize(tmp_file_path)
    @tmp_file = File.new(tmp_file_path, "w+")
  end
  
end


def main
  cc = CommandClipper.new(ARGV[0])
  cc.instance_eval { p @tmp_file }
end

main()
