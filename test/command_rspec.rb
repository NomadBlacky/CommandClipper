#! /user/bin/env ruby
# coding: utf-8

require 'command'

describe CommandClipper::Command do

  it "initialize" do
    c = CommandClipper::Command.new
    expect(c.id)         .to eq nil
    expect(c.name)       .to eq nil
    expect(c.description).to eq nil
    expect(c.command)    .to eq nil
  end

  it "initialize2" do
    c = CommandClipper::Command.new do |ins|
      ins.name        = "echo-hoge"
      ins.description = %!print "hoge" to stdout!
      ins.command     = "echo hoge"
    end

    expect(c.id)         .to eq nil
    expect(c.name)       .to eq "echo-hoge"
    expect(c.description).to eq %!print "hoge" to stdout!
    expect(c.command)    .to eq "echo hoge"
  end
  
end
