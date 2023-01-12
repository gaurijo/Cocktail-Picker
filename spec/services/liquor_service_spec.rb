require 'rails_helper'

RSpec.describe LiquorService do 
  it 'returns all drinks based on a liquor/ingredient search' do 
    drinks = LiquorService.get_drinks("vodka")
    # require 'pry'; binding.pry 
    expect(drinks).to be_a(Hash)
    expect(drinks[:drinks][0]).to have_key(:strDrink)
    expect(drinks[:drinks][0][:strDrink]).to eq("155 Belmont")
  end
end