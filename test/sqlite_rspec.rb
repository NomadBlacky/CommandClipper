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
    result = @db.execute('select * from test where id = 1')
    expect(result).to eq [[1, 1, 2.2, "three"]]
  end

  it "列名とレコードの取得" do
    @db.execute2('select * from test where id = 1') do |row|
      p row
    end
  end
  
end
