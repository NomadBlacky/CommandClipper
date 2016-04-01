#! /user/bin/env ruby
# coding: utf-8

module CommandClipper

  class CLI

    def initialize(client)
      @client = client
    end

    def start(options)
      
      
      commands = @client.load_commands
      @show = commands.sort_by(&:last_executed).reverse.take(5)
      @show.each.with_index do |command, i|
        puts "[%2d]: %s" % [i, command.name]
      end
    end
    
  end

end
