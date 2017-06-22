
feature "player health" do
  scenario "on starting the game" do
    visit ('/')
    fill_in 'player_1', with: 'player'
    fill_in 'player_2', with: 'player2'
    click_button("Submit")
    expect(page).to have_css('#p2_health', :text => '100')
  end
end
