class CreateRecipeIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :recipe_ingredients do |t|
      t.integer :recipe_id
      t.integer :intgredient_id
      t.integer :quantity

      t.timestamps
    end
  end
end
