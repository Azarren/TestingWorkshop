And("I select the option compressed hours") do
  within('div.govuk-form-group') do
    expect(page).to have_selector('h1.govuk-fieldset__heading', text: 'Is the holiday entitlement based on:')
  end
  expect(page).to have_button 'Continue'
  choose('response-3', allow_label_click: true)
  click_button('Continue')
end

Then("I recieve a unique message") do
  within('div.gem-c-title') do
    expect(page).to have_selector('h1.gem-c-title__text', text: 'Information based on your answers')
  end
  expect(page).to have_text "Rather than taking a day’s holiday it’s 7 hours and 30 minutes holiday for each day otherwise worked."
end
