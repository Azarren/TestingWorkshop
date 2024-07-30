Given('I have answered all questions') do
  expect(page).to have_text 'No'
  expect(page).to have_text 'hours worked per week'
  expect(page).to have_text 'for a full leave year'
  expect(page).to have_text '37.5'
  expect(page).to have_text '5.0'
end

And('I see the summary page') do
  expect(page).to have_title 'Outcome - Calculate holiday entitlement - GOV.UK'
  within('div.gem-c-title') do
    expect(page).to have_selector('h1.gem-c-title__text', text: 'Information based on your answers')
  end
end

When('I click on the change link for {string}') do |section_text|
  section = all('div.govuk-summary-list__row').find do |div|
    div.has_css?('dt.govuk-summary-list__key', text: section_text)
  end

  within(section) do
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
