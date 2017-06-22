feature "player health" do
  scenario "on starting the game" do
    sign_in_and_play
    expect(page).to have_css('#p2_health', :text => '100')
    expect(page).to have_css('#p1_health', :text => '100')
  end

  scenario "player one clicks attack button" do
    sign_in_and_play
    click_on 'Attack'
    expect(page).to have_content('player attacked player2!')
  end

  scenario "when game enters 2" do
    sign_in_and_play
    click_on 'Attack'
    expect(page).to have_css('#p1_health', :text => '100')
    expect(page).to have_css('#p2_health', :text => '90')
  end

  scenario "when player two clicks attack button" do
    sign_in_and_play
    click_on 'Attack'
    click_on 'Attack'
    expect(page).to have_css('#p1_health', :text => '90')
    expect(page).to have_css('#p2_health', :text => '90')
  end

end
