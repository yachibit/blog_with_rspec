# coding: utf-8
require 'spec_helper'

describe Article do
  context "titleとbodyを指定した場合" do
    before do
      @article = Article.new(
        title: "初めてのブログ",
        body: "最初の記事です。"
      )
    end
    it "titleがセットされていること" do
      @article.title.should == "初めてのブログ"
    end
    it "bodyがセットされていること" do
      @article.body.should == "最初の記事です。"
    end
  end
  context "titleが設定されている場合" do
    before do
      @article = Article.new(title: "初めてのブログ")
    end
    it { @article.should be_valid }
  end
  context "titleが設定されていない場合" do
    before do
      @article = Article.new
    end
    it { @article.should_not be_valid }
  end
end
