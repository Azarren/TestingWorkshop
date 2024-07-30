And ('I leave the date for year leave started blank') do
  expect(page).to have_content 'When does the leave year start?'
  expect(page).to have_button 'Continue'
end

And ('I click the continue button') do
  click_button('Continue')
end

Then ("I should see an error message 'Please answer this question'") do
  expect(page).to have_text 'There is a problem'
  expect(page).to have_text 'Please answer this question'
  expect(page).to have_selector('div#error-summary.gem-c-error-summary.govuk-error-summary')
end

And ('input fields should be highlighted in red') do
  expect(page).to have_selector('div[role="alert"]')
end
