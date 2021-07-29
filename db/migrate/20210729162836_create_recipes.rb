class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :description
      t.string :instructions
      t.integer :prep_time
      t.integer :servings

      t.timestamps
    end
  end
end
