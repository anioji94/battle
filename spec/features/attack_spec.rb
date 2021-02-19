require 'spec_helper'

feature 'Attacking' do
	scenario 'attack Player 2' do
		sign_in_and_play
		click_link 'Attack'
		expect(page).to have_content "Ash attacked Gary! "
		expect(page).to have_content "Gary 50 HP"
	end
end

