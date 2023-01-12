require 'rails_helper'

RSpec.describe Cocktail do 
  it "returns a cocktail name, ingredients, and instructions on how to make" do 
    response = JSON.parse(File.read('spec/fixtures/marg.json'), symbolize_names: true)
    cocktail = Cocktail.new(response)

    expect(cocktail).to be_a(Cocktail)
    expect(cocktail.name).to eq("Margarita")
    expect(cocktail.ingredient1).to eq("Tequila")
    expect(cocktail.ingredient2).to eq("Triple sec")
    expect(cocktail.ingredient3).to eq("Lime juice")
    expect(cocktail.ingredient4).to eq("Salt")
    expect(cocktail.instructions).to eq("Rub the rim of the glass with the lime slice to make the salt stick to it. Take care to moisten only the outer rim and sprinkle the salt on it. The salt should present to the lips of the imbiber and never mix into the cocktail. Shake the other ingredients with ice, then carefully pour into the glass.")
  end
end