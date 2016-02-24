#! /user/bin/env ruby
# coding: utf-8

require 'yaml'

describe YAML do
  let(:yaml) { YAML.load_file(File.dirname(__FILE__) + "/test.yaml") }
  
  it "ファイルを読み込む" do
    p yaml
  end

  it "ハッシュ"

  it "配列"

  it "boolean"

  it "整数"

  it "浮動小数点"
  
  it "文字列"

  it "日付"

  it "タイムスタンプ"
  
end
