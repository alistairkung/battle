

def sign_in_and_play
  visit ('/')
  fill_in 'player_1', with: 'player'
  fill_in 'player_2', with: 'player2'
  click_button("Submit")
end

def kill_player_two
  sign_in_and_play
  click_on 'Attack'
  click_on 'Attack'
  click_on 'Attack'
  click_on 'Attack'
  click_on 'Attack'
  click_on 'Attack'
  click_on 'Attack'
  click_on 'Attack'
  click_on 'Attack'
  click_on 'Attack'
  click_on 'Attack'
  click_on 'Attack'
  click_on 'Attack'
  click_on 'Attack'
  click_on 'Attack'
  click_on 'Attack'
  click_on 'Attack'
  click_on 'Attack'
  click_on 'Attack'
end
