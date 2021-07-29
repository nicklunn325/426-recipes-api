class Recipe < ApplicationRecord
    belongs_to :user

    has_many :reviews
    has_many :users, through: :reviews

    has_many :user_recipes
    has_many :recipe_users, through: :user_recipes, class_name: "User"

    has_many :recipe_ingredients
    has_many :ingredients, through: :recipe_categories

    has_many :recipe_categories
    has_many :cotegories, through: :recipe_categories
end
