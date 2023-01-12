require 'rails_helper'

RSpec.describe CocktailService do 
  it 'gets data for a cocktail when searched for by name' do 
    cocktail = CocktailService.get_cocktail("margarita")
    
    expect(cocktail).to be_a(Hash)
    expect(cocktail[:drinks][0][:strDrink]).to eq("Margarita")
    expect(cocktail[:drinks][0][:strIngredient1]).to eq("Tequila")
    expect(cocktail[:drinks][0][:strIngredient2]).to eq("Triple sec")
    expect(cocktail[:drinks][0][:strIngredient3]).to eq("Lime juice")
    expect(cocktail[:drinks][0][:strIngredient4]).to eq("Salt")
    expect(cocktail[:drinks][0][:strInstructions]).to eq("Rub the rim of the glass with the lime slice to make the salt stick to it. Take care to moisten only the outer rim and sprinkle the salt on it. The salt should present to the lips of the imbiber and never mix into the cocktail. Shake the other ingredients with ice, then carefully pour into the glass.")
  end
end