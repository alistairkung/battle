feature "player health" do
  scenario "on starting the game" do
    sign_in_and_play
    expect(page).to have_css('#p2_health', :text => '100')
  end

  scenario "player clicks attack button" do
    sign_in_and_play
    click_on 'Attack'
    expect(page).to have_content('You attacked player2!')
  end

  scenario "player 2 is attacked" do
    sign_in_and_play
    click_on 'Attack'
    expect(page).to have_css('#p2_health', :text => '90')
  end

end
