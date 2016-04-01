#! /user/bin/env ruby
# coding: utf-8

module CommandClipper

  class Command

    attr_reader   :id
    attr_accessor :name, :category, :description, :command, :last_executed

    def initialize(id=nil)
      yield self if block_given?
    end

  end

end
