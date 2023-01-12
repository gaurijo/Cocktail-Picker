require 'rails_helper'

RSpec.describe LiquorFacade do 
  it "returns drinks based on a liquor or ingredient" do 
    drinks = LiquorFacade.create_drinks('vodka')
    
    expect(drinks).to be_a(Array)
    expect(drinks.count).to eq(10)
  end
end