
feature 'Enter names' do
    scenario 'submitting names' do
        visit('/')
        fill_in :player_1_name, with: "Nabonidus"
        fill_in :player_2_name, with: 'Sargon of Akkad'
        click_button 'Submit'
        expect(page).to have_content "Nabonidus vs. Sargon of Akkad"
    end
end