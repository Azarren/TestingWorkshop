Given('I navigate to the homepage') do
    visit 'https://www.gov.uk/calculate-your-holiday-entitlement'
    sleep 1
end

And('I should see the homepage') do
    expect(page).to have_title 'Calculate holiday entitlement - GOV.UK'
    expect(page).to have_css 'h1.govuk-heading-xl'
    expect(page).to have_link 'Start now'
    expect(page).to have_content 'Use this tool to calculate holiday entitlement for:'
end

When ("I click on the 'Start now' button") do
    click_link('Start now')
end

And("I select the option no for working irregular hours") do
    expect(page).to have_content 'Does the employee work irregular hours or for part of the year?'
    expect(page).to have_button 'Continue'
    choose('response-1', allow_label_click: true)
    click_button('Continue')
end

And ('I select the option hours worked per week') do
    expect(page).to have_content 'Is the holiday entitlement based on:'
    expect(page).to have_button 'Continue'
    choose('response-1', allow_label_click: true)
    click_button('Continue')
end

And ('I select the option for a full leave year') do
    expect(page).to have_content 'Do you want to work out holiday:'
    expect(page).to have_button 'Continue'
    choose('response-0', allow_label_click: true)
    click_button('Continue')
end

Then ('I should see the correct submitted answers') do
    expect(page).to have_title 'Outcome - Calculate holiday entitlement - GOV.UK'
    expect(page).to have_text 'No'
    expect(page).to have_text 'hours worked per week'
    expect(page).to have_text 'for a full leave year'
    expect(page).to have_text '37.5'
    expect(page).to have_text '5.0'
end

And ('I should see the total entitlement hours') do
    expect(page).to have_content 'The statutory entitlement is 210 hours holiday.'
end
