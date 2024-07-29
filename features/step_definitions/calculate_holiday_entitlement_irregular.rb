And("I select the option yes for working irregular hours") do
  expect(page).to have_content 'Does the employee work irregular hours or for part of the year?'
  expect(page).to have_button 'Continue'
  choose('response-0', allow_label_click: true)
  click_button('Continue')
end

And ('I input 1st of October 1998') do
  expect(page).to have_content 'When does the leave year start?'
  expect(page).to have_button 'Continue'
  fill_in('response-0', with: '1')
  fill_in('response-1', with: '10')
  fill_in('response-2', with: '1998')
  click_button('Continue')
end
