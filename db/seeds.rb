puts "destroying everything..."

User.destroy_all
Category.destroy_all
Recipe.destroy_all
Ingredient.destroy_all
Review.destroy_all
RecipeIngredient.destroy_all
RecipeCategory.destroy_all
UserRecipe.destroy_all


5.times do 
    User.create(name: Faker::FunnyName.name, password: "password123")
end

25.times do
    Recipe.create(title: Faker::Food.dish, description: Faker::Food.description, instructions: Faker::Books::Dune.quote, prep_time: rand(20..75), servings: rand(2..10), user_id: rand(1..5))
end

100.times do 
    Ingredient.create(name: Faker::Food.ingredient)
end

10.times do
    Category.create(title: Faker::Books::Dune.title)
end

50.times do 
    Review.create(user_id: rand(1..5), recipe_id: rand(1..25), title: Faker::GreekPhilosophers.name, content: Faker::GreekPhilosophers.quote, rating: rand(1..5))
end

50.times do 
    UserRecipe.create(recipe_id: rand(1..25), user_id: rand(1..5))
end

200.times do
    RecipeIngredient.create(recipe_id: rand(1..25), ingredient_id: rand(1..100), quantity: rand(1..4))
end

50.times do
    RecipeCategory.create(recipe_id: rand(1..25), category_id: rand(1..10))
end



