require 'rails_helper'

RSpec.describe 'as a visitor' do 
  describe 'when i search for a liquor or ingredient' do 
    it 'i see a list of 10 cocktails that contain that liquor/ingredient' do 

      visit '/'

      fill_in :liquor, with: "vodka"

      click_button 'Show me some cocktails!'

      expect(current_path).to eq(drinks_path)
      expect(page).to have_content("Here Are Some Recommendations:")
    end
  end
end

# I want to add a feature that displays these cocktails as links to that cocktail's show page
# with the name, ingredients, instructions
# and a home button to go back to the landing page on the show pages