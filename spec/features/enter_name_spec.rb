require 'spec_helper'
feature 'players 1 & 2 can add their names ' do
  scenario 'submitting their names ' do
    sign_in_and_play
    expect(page).to have_content 'Fred vs. Alex'
   end
end
