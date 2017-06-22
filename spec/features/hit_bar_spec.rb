feature "player health" do
  scenario "on starting the game" do
    sign_in_and_play
    expect(page).to have_css('#p2_health', :text => '100')
  end
end
