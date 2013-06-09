# coding: utf-8
require 'spec_helper'

describe ArticlesController do

  describe "GET 'index'" do
    before do
      @article1 = Article.create(
        title: "Article 1",
        body: "Hello"
      )
      @article2 = Article.create(
        title: "Article 2",
        body: "World"
      )
      get 'index'
    end
    it "returns http success" do
      response.should be_success
    end
    it "登録されている記事をすべて返すこと" do
      assigns[:articles].should =~ [@article1, @article2]
    end
  end
end
