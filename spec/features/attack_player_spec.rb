feature 'attack player' do
  scenario 'attacking player 2 takes away 10hp ' do
    sign_in_and_play
    click_link("attack player 2")
    expect(page).not_to have_content "Fred has attacked Alex, and Alex's health is now 100"
    expect(page).to have_content "Fred has attacked Alex, and Alex's health is now 90"
  end
end
