require 'rails_helper'

RSpec.describe CocktailFacade do 
  it 'returns data for cocktail by name and stores it as an object' do 
    cocktail = CocktailFacade.create_cocktail('margarita')

    expect(cocktail).to be_a(Cocktail)
  end
end