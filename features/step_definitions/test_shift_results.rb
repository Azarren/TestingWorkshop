Then ('I recieve results in shifts') do
    expect(page).to have_selector('div.summary p', text: 'The statutory holiday entitlement is 28 shifts for the year. Each shift being 5.0 hours.')
  end

And ('I input int {int}') do |num|
  expect(page).to have_button 'Continue'
  fill_in('response', with: num)
  click_button('Continue')
end
