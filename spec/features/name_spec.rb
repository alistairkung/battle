feature "Name Form", :type => :feature do
  scenario "Users enters their names" do
    sign_in_and_play
    expect(page).to have_content 'player'
    expect(page).to have_content 'player2'
  end
end
