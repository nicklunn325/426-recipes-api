class RecipesIngredientsController < ApplicationController
    belongs_to :recipe
    belongs_to :ingredient
end
