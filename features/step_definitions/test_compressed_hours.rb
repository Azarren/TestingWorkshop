And("I select the option compressed hours") do
  expect(page).to have_content 'Is the holiday entitlement based on:'
  expect(page).to have_button 'Continue'
  choose('response-3', allow_label_click: true)
  click_button('Continue')
end

Then("I recieve a unique message") do
  expect(page).to have_content 'Information based on your answers'
  expect(page).to have_text "Rather than taking a day’s holiday it’s 7 hours and 30 minutes holiday for each day otherwise worked."
end
