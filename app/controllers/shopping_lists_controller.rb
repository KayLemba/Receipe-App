class ShoppingListsController < ApplicationController
  def index
    @recipe = RecipeFood.total_price
    @recipes = RecipeFood.all
  end
end
