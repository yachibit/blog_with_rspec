class Article < ActiveRecord::Base
  attr_accessible :body, :title

  validates :title, presence: true
end
