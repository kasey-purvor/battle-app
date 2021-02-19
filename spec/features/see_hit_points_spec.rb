require 'spec_helper'
feature "view hit points" do
  scenario "see player hit points" do
    sign_in_and_play
    expect(page).to have_content("Alex Health Points:")
    expect(page).to have_content("Fred Health Points:")
  end
end
