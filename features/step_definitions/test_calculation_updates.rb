Given('I have answered all questions') do
  expect(page).to have_text 'No'
  expect(page).to have_text 'hours worked per week'
  expect(page).to have_text 'for a full leave year'
  expect(page).to have_text '37.5'
  expect(page).to have_text '5.0'
end

And('I see the summary page') do
  expect(page).to have_title 'Outcome - Calculate holiday entitlement - GOV.UK'
  expect(page).to have_content 'Information based on your answers'
end

When('I click on the change link for {string}') do |section_text|
  within(:xpath, "//div[contains(@class, 'govuk-summary-list__row') and .//dt[contains(text(), '#{section_text}')]]") do
    find('a.govuk-link', text: 'Change').click
  end
end

And ('I input {float} hours worked per week') do |input|
  expect(page).to have_content 'Number of hours worked per week?'
  expect(page).to have_button 'Continue'
  fill_in('response', with: input)
  click_button('Continue')
end

And ('I input {int} days worked per week') do |input|
  fill_in('response', with: input)
  click_button('Continue')
end

And ('I should see the updated total entitlement hours') do
  expect(page).to have_text 'The statutory entitlement is 112 hours holiday.'
end

Then ('I should see the correct changed answers') do
  expect(page).to have_title 'Outcome - Calculate holiday entitlement - GOV.UK'
  expect(page).to have_text 'No'
  expect(page).to have_text 'hours worked per week'
  expect(page).to have_text 'for a full leave year'
  expect(page).to have_text '20.0'
  expect(page).to have_text '4.0'
end
