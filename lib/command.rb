#! /user/bin/env ruby
# coding: utf-8

require 'sqlite3'

module CommandClipper

  class Command

    attr_reader   :id
    attr_accessor :name, :description, :command

    def initialize(id=nil)
      yield self if block_given?
    end

    def save(db_file)
      
    end

    # class methods ------------------------------
    
    def self.load_commands(db_file)
      
    end
    
  end

end
