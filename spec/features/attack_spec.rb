feature "attack" do
  scenario "attacking player 2" do
    sign_in_and_play
    click_link
    expect(page).to have_content "Dave attacked Mittens"
  end

  scenario "reduce p2's hp by 10" do
    sign_in_and_play
    click_link
    expect(page).not_to have_content "Mittens 100hp"
    expect(page).to have_content "Mittens's hp reduced by 10"
  end

end