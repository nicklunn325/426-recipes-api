class User < ApplicationRecord
  has_many :user_recipes
  has_many :recipes, through: :user_recipes
  has_many :reviews
  has_many :reviewed_recipes, through: :reviews, source: :recipe # how do we have two joins? 
end
