And("I select the option yes for working irregular hours") do
  expect(page).to have_content 'Does the employee work irregular hours or for part of the year?'
  expect(page).to have_button 'Continue'
  choose('response-0', allow_label_click: true)
  click_button('Continue')
end

And ('I input {int} of {int} {int}') do |day, month, year|
  expect(page).to have_button 'Continue'
  fill_in('response-0', with: day)
  fill_in('response-1', with: month)
  fill_in('response-2', with: year)
  click_button('Continue')
end
