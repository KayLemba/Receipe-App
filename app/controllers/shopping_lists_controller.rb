class ShoppingListsController < ApplicationController
  def index
    @recipes = RecipeFood.all
  end
end
