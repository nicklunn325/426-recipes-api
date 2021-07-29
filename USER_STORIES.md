# User Stories

- signup
- login #fake auth
- create a new recipe
- see all recipes
- update a recipe(if you created it?)
- delete a recipe(if you created it?)
- add recipes to their personal "recipe book"(favoriting recipes)
- profile page
  - dietary preferences/restrictions
  - culinary goals?
  - profile picture (string of image url)
  - all of your(ones you created) recipes
  - link to your recipes book
  - favorite cuisine/category?
- recipes should be categorized
- search recipes by category
- search recipes by ingredients
- review/comment on recipes
- search recipes by diet/restritctions
- ability to add new ingredient if not listed

# what will this look like on the backend?

## what models do we need?

- user
  name
  password
  motto
  profile picture
  website
  timestamps

  has_many user_recipes
  has_many recipes through user_recipes
  has_many reviews
  has_many recipes through reviews how do we access recipes through two separate join tables?

- recipe
    <!-- can only have one creator -->

  title/recipe_name
  description
  instructions
  prep_time
  servings
  timestamps

  has_one creator
  has_many user_recipes
  has_many users through user_recipes
  has_many recipe_ingredients
  has_many ingredients through recipe_ingredients
  has_many recipe_categories
  has_many categories through recipe_categories

- ingredient
  name
  has_many recipe_ingedients
  has_many recipes through recipe ingredients
- category
  name/title

  has_many recipe_categories
  has_many recipes through recipe_categories

- userRecipe
  user_id
  recipe_id
  notes?
  belongs_to user
  belongs_to recipe
- recipeIngredient
  recipe_id
  ingredient_id
  amount/quantity

  belongs_to recipe
  belongs_to ingredient

- recipeCategory
  recipe_id
  category_id
  belongs_to recipe
  belongs_to category
- review
  recipe_id
  user_id
  rating
  title
  content
  belongs_to recipe
  belongs_to user
