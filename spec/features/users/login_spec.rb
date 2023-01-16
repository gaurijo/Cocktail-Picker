require 'rails_helper'

RSpec.describe 'Logging In' do 
  it 'can log in with valid credentials' do 
    user = User.create!(username: "test", password: "test123")

    visit login_path

    expect(current_path).to eq(login_path)

    fill_in :username, with: user.username 
    fill_in :password, with: user.password 

    click_on "Log In"

    expect(page).to have_current_path(root_path)
    expect(page).to have_content("Welcome back!")
  end
end