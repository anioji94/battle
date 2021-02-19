require 'spec_helper'

feature 'Enter names' do
   # @hit_points = Battle::HIT_POINTS # Doesn't work here!
    scenario 'submitting names' do
				@hit_points = Battle::HIT_POINTS # Works here?
        sign_in_and_play
				p @hit_points
				save_and_open_page
        expect(page).to have_content "Ash vs. Gary Gary #{@hit_points} HP"
    end
end

feature 'Attacking' do
	scenario 'attack Player 2' do
		sign_in_and_play
		click_link 'Attack'
		expect(page).to have_content "Ash attacked Gary!"
	end
end