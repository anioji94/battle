require 'web_helper'
feature 'Enter names' do
    @hit_points = Battle::HIT_POINTS
    scenario 'submitting names' do
        sign_in_and_play
        expect(page).to have_content "Ash vs. Gary Gary #{@hit_points} HP"
    end
end
