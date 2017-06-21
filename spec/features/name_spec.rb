feature "Name Form", :type => :feature do
  scenario "Users enters their names" do
    visit ('/')
    fill_in 'player_1', with: 'player'
    fill_in 'player_2', with: 'player2'
    click_button("Submit")
    expect(page).to have_content 'player'
    expect(page).to have_content 'player2'
  end
end
