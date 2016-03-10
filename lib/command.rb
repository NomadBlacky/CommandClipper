#! /user/bin/env ruby
# coding: utf-8

require 'sqlite3'

module CommandClipper

  class Command

    attr_reader   :id
    attr_accessor :name, :description, :command, :last_executed

    def initialize(id=nil)
      yield self if block_given?
    end

    def save(database=Config.instance.database)
      
    end

    # class methods ------------------------------
    
    def self.load_commands(database=Config.instance.database)
      columns, *rows = database.execute('select * from command')
      index_map = {}
      columns.each_with_index {|item, index| index_map[item] = index}
      rows.map do |row|
        Command.new do |c|
          c.id            = row[index_map["id"]]
          c.name          = row[index_map["name"]]
          c.description   = row[index_map["description"]]
          c.command       = row[index_map["command"]]
          c.last_executed = row[index_map["last_executed"]]
        end
      end
    end
    
  end

end
