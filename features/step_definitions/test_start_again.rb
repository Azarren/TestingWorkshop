And ('I click the "Start again" link') do
  click_link('Start again')
end

Then ('I restart the quiz') do
  expect(page).to have_text 'Calculate holiday entitlement'
  expect(page).to have_link 'Start now'
end

And("I select the option days worked per week") do
  within('div.govuk-form-group') do
    expect(page).to have_selector('h1.govuk-fieldset__heading', text: 'Is the holiday entitlement based on:')
  end
  expect(page).to have_button 'Continue'
  choose('response-0', allow_label_click: true)
  click_button('Continue')
end

And("I select the option for someone starting part way through a leave year") do
  within('div.govuk-form-group') do
    expect(page).to have_selector('h1.govuk-fieldset__heading', text: 'Do you want to work out holiday:')
  end
  expect(page).to have_button 'Continue'
  choose('response-2', allow_label_click: true)
  click_button('Continue')
end

And("I select the option annualised hours") do
  within('div.govuk-form-group') do
    expect(page).to have_selector('h1.govuk-fieldset__heading', text: 'Is the holiday entitlement based on:')
  end
  expect(page).to have_button 'Continue'
  choose('response-2', allow_label_click: true)
  click_button('Continue')
end

And("I select the option for someone leaving part way through a leave year") do
  within('div.govuk-form-group') do
    expect(page).to have_selector('h1.govuk-fieldset__heading', text: 'Do you want to work out holiday:')
  end
  expect(page).to have_button 'Continue'
  choose('response-2', allow_label_click: true)
  click_button('Continue')
end

And("I select the option shifts") do
  within('div.govuk-form-group') do
    expect(page).to have_selector('h1.govuk-fieldset__heading', text: 'Is the holiday entitlement based on:')
  end
  expect(page).to have_button 'Continue'
  choose('response-4', allow_label_click: true)
  click_button('Continue')
end

And ('I input {float}') do |num|
  expect(page).to have_button 'Continue'
  fill_in('response', with: num)
  click_button('Continue')
end
