class PublicRecipesController < ApplicationController
  def index
    @public_recipes = Recipe.public_recipe
  end
end
