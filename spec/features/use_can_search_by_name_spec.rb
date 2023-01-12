require 'rails_helper'

RSpec.describe 'as a visitor' do 
  describe 'when i search for a cocktail' do 
    it 'i see its results' do 
      
      visit '/'

      fill_in :cocktail, with: "margarita"

      click_button 'Search'

      expect(current_path).to eq(cocktails_path)
      expect(page).to have_content("You chose a Margarita!")
      expect(page).to have_content("Ingredients:")
      expect(page).to have_content("How to Make:")
    end
  end
end