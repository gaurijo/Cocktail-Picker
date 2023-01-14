require 'rails_helper'

RSpec.describe 'Loggin In' do 
  it 'can log in with valid credentials' do 
    user = User.create!(username: "test", password: "123test")

    visit "/"

    click_on "I already have an account"

    expect(current_path).to eq(login_path)

    fill_in :username, with: user.username 
    fill_in :password, with: user.password 

    click_on "Log In"

    expect(current_path).to eq(root_path)

    expect(page).to have_content("Welcome, #{user.username}!")
  end
end