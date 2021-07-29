class Ingredient < ApplicationRecord
    has_many :recipe_ingedients
    has_many :recipies, through: :recipe_ingredients
end
