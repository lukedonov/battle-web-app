
feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player1, with: 'Dave'
    fill_in :player2, with: 'Mittens'
    click_button 'Submit'
    expect(page).to have_content 'Dave vs. Mittens'
  end
end