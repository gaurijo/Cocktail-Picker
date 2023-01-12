require 'rails_helper'

RSpec.describe Liquor do 
  it "exists and has attributes" do 
    response = JSON.parse(File.read('spec/fixtures/vodka_drinks.json'), symbolize_names: true)
    drink = Liquor.new(response)
    
    expect(drink).to be_a(Liquor)
    expect(drink.name).to eq(response[:strDrink])
  end
end