And ('I click the "Start again" link') do
  click_link('Start again')
end

Then ('I restart the quiz') do
  expect(page).to have_text 'Calculate holiday entitlement'
  expect(page).to have_link 'Start now'
end

And("I select the option days worked per week") do
  expect(page).to have_content 'Is the holiday entitlement based on:'
  expect(page).to have_button 'Continue'
  choose('response-0', allow_label_click: true)
  click_button('Continue')
end

And("I select the option for someone starting part way through a leave year") do
  expect(page).to have_content 'Do you want to work out holiday:'
  expect(page).to have_button 'Continue'
  choose('response-2', allow_label_click: true)
  click_button('Continue')
end

And("I select the option annualised hours") do
  expect(page).to have_content 'Is the holiday entitlement based on:'
  expect(page).to have_button 'Continue'
  choose('response-2', allow_label_click: true)
  click_button('Continue')
end

And("I select the option for someone leaving part way through a leave year") do
  expect(page).to have_content 'Do you want to work out holiday:'
  expect(page).to have_button 'Continue'
  choose('response-2', allow_label_click: true)
  click_button('Continue')
end

And("I select the option shifts") do
  expect(page).to have_content 'Is the holiday entitlement based on:'
  expect(page).to have_button 'Continue'
  choose('response-4', allow_label_click: true)
  click_button('Continue')
end

And ('I input {int}') do |num|
  expect(page).to have_button 'Continue'
  fill_in('response', with: num)
  click_button('Continue')
end
