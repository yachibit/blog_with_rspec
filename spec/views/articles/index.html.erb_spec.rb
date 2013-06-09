# coding: utf-8
require 'spec_helper'

describe "articles/index.html.erb" do
  before do
    assign(
      :articles, [
        Article.create(
          title: "初めてのブログ",
          body: "こんにちは"
        )
      ]
    )
    render
    it "記事のタイトルが表示されること" do
      rendered.should =~ /初めてのブログ/
    end
    it "記事の本文が表示されること" do
      rendered.should =~ /こんにちは/
    end
  end
end
