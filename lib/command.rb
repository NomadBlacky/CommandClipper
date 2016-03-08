#! /user/bin/env ruby
# coding: utf-8

require 'sqlite3'

module CommandClipper

  class Command

    attr_reader :name, :description, :command

    def initialize(name, description, command)
      @name = name | ""
      @description = description | ""
      @command = command | ""
    end

    def self.load_commands(db_file)
      
    end
    
  end

end
