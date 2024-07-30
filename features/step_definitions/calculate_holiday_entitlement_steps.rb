Given('I navigate to the homepage') do
    visit 'https://www.gov.uk/calculate-your-holiday-entitlement'
    sleep 1
end

And('I should see the homepage') do
    within('div.gem-c-title') do
        expect(page).to have_selector('h1.gem-c-title__text', text: 'Calculate holiday entitlement')
    end
    expect(page).to have_title 'Calculate holiday entitlement - GOV.UK'
    expect(page).to have_css 'h1.govuk-heading-xl'
    expect(page).to have_link 'Start now'
    expect(page).to have_content 'Use this tool to calculate holiday entitlement for:'
end

When ("I click on the 'Start now' button") do
    click_link('Start now')
end

And("I select the option no for working irregular hours") do
    within('div.govuk-form-group') do
        expect(page).to have_selector('h1.govuk-fieldset__heading', text: 'Does the employee work irregular hours or for part of the year?')
    end
    expect(page).to have_button 'Continue'
    choose('response-1', allow_label_click: true)
    click_button('Continue')
end

And ('I select the option hours worked per week') do
    within('div.govuk-form-group') do
        expect(page).to have_selector('h1.govuk-fieldset__heading', text: 'Is the holiday entitlement based on:')
    end
    expect(page).to have_button 'Continue'
    choose('response-1', allow_label_click: true)
    click_button('Continue')
end

And ('I select the option for a {string} full leave year') do |text|
    within('div.govuk-form-group') do
        expect(page).to have_selector('h1.govuk-fieldset__heading', text: 'Do you want to ' + text + ' holiday:')
    end
    expect(page).to have_button 'Continue'
    choose('response-0', allow_label_click: true)
    click_button('Continue')
end

Then ('I should see the answers {string} {string} {string} {float} {int}') do |answer1, answer2, answer3, answer4, answer5|
    expect(page).to have_title 'Outcome - Calculate holiday entitlement - GOV.UK'
    within('div.gem-c-title') do
        expect(page).to have_selector('h1.gem-c-title__text', text: 'Information based on your answers')
    end
    expect(page).to have_text answer1
    expect(page).to have_text answer2
    expect(page).to have_text answer3
    expect(page).to have_text answer4
    expect(page).to have_text answer5
end

And ('I should see the total entitlement hours') do
    within('div.summary') do
        expect(page).to have_selector('p', text: 'The statutory entitlement is 210 hours holiday.')
    end
end

And("I select the option yes for working irregular hours") do
    within('div.govuk-form-group') do
        expect(page).to have_selector('h1.govuk-fieldset__heading', text: 'Does the employee work irregular hours or for part of the year?')
    end
    expect(page).to have_button 'Continue'
    choose('response-0', allow_label_click: true)
    click_button('Continue')
  end

  And ('I input {int} of {int} {int}') do |day, month, year|
    expect(page).to have_button 'Continue'
    fill_in('response-0', with: day)
    fill_in('response-1', with: month)
    fill_in('response-2', with: year)
    click_button('Continue')
  end
