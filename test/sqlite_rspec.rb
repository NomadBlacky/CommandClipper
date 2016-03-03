#! /user/bin/env ruby
# coding: utf-8

require 'sqlite3'

describe SQLite3::Database do

  before(:each) do
    @db = SQLite3::Database.new(File.dirname(__FILE__) + "/test.sqlite")
  end

  after(:each) do
    @db.close
  end

  it "データベースを開く" do
    @db
  end

  it "レコードの取得" do
    @db.execute('select * from test') do |row|
      p row
    end
  end
  
end
