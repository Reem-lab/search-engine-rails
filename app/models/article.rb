class Article < ApplicationRecord
  has_many :analytics
  belongs_to :user
end
