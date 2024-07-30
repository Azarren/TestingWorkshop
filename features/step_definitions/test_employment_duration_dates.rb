Then ("I will see an error message") do
  expect(page).to have_text 'There is a problem'
  expect(page).to have_selector('div#error-summary.gem-c-error-summary.govuk-error-summary')
  expect(page).to have_selector('div[role="alert"]')
end
