
feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Dave vs. Mittens'
  end

  scenario 'seeing hit points' do
    sign_in_and_play
    expect(page).to have_content 'Dave: 60hp'
  end

  scenario 'seeing hit points' do
    sign_in_and_play
    expect(page).to have_content 'Mittens: 60hp'
  end

  # scenario "seeing turns" do 
  #   sign_in_and_play
  #   expect(page).to have_content "It's Dave's turn!"
  # end
end