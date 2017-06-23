
feature "battle feedback" do
  scenario "player one clicks attack button" do
    sign_in_and_play
    click_on 'Attack'
    expect(page).to have_content("player2's turn to attack")
    expect(page).to have_content('player attacked player2!')
  end

  scenario "player two clicks attack button" do
    sign_in_and_play
    click_on 'Attack'
    click_on 'Attack'
    expect(page).to have_content("player's turn to attack")
    expect(page).to have_content('player2 attacked player!')
  end

  scenario "when player two faints" do
    kill_player_two
    expect(page).to have_content("player won!")
  end

end
