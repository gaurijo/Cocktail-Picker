class CocktailsController < ApplicationController 
  def index 
    @drink = params[:cocktail]
    @cocktail = CocktailFacade.create_cocktail(@drink)
  end
end