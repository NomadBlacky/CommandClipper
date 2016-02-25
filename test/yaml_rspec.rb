#! /user/bin/env ruby
# coding: utf-8

require 'yaml'

describe YAML do
  let(:yaml) { YAML.load_file(File.dirname(__FILE__) + "/test.yaml") }
  let(:root) { yaml["root"] }
  
  it "ファイルを読み込む" do
    p yaml
  end

  it "ハッシュ" do
    hash = root["test_hash"]
    expect(hash["h1"]).to eq 1
    expect(hash["h2"]).to eq 2
    expect(hash["h3"]).to eq ({"h3_1" => 3, "h3_2" => 4})
  end

  it "配列" do
    ary = root["test_array"]
    expect(ary.size).to eq 3
    expect(ary[0]).to eq "a"
    expect(ary[1]).to eq "b"
    expect(ary[2]).to eq ["c", "d"]
  end

  it "boolean" do
    hash = root["test_boolean"]
    expect(hash["b1"]).to eq true
    expect(hash["b2"]).to eq false
    expect(hash["b3"]).to eq true
    expect(hash["b4"]).to eq false
    expect(hash["b5"]).to eq true
    expect(hash["b6"]).to eq false
  end

  it "整数"

  it "浮動小数点"
  
  it "文字列"

  it "日付"

  it "タイムスタンプ"
  
end
