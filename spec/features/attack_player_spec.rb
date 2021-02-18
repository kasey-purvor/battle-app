feature 'attack player' do
  scenario 'attacking player 2' do
    sign_in_and_play
    click_link("attack player 2")
    expect(page).to have_content "Fred has attacked Alex"
  end
end
