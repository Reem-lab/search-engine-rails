class Analytic < ApplicationRecord
  has_many :articles
  belongs_to :user

  # def save_searches
    
  # end
end
