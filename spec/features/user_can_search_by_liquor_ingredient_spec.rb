require 'rails_helper'

RSpec.describe 'as a visitor' do 
  describe 'when i search for a liquor or ingredient' do 
    it 'i see a list of 10 cocktails that contain that liquor/ingredient' do 

      visit '/'

      fill_in :liquor, with: "vodka"

      click_button 'Show me some cocktails!'

      expect(current_path).to eq(drinks_path)
    end
  end
end