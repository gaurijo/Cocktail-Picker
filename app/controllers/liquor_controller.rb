class LiquorController < ApplicationController
  def index 
    @liquor = params[:liquor]
    @drinks = LiquorFacade.create_drinks(@liquor)
  end
end