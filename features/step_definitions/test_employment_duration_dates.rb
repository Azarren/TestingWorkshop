Then('I will see an error message {string}') do |error|
  within('div#error-summary.gem-c-error-summary.govuk-error-summary') do
    expect(page).to have_selector('h2.govuk-error-summary__title', text: 'There is a problem')
    error_elements = all('li.gem-c-error-summary__list-item a')
    error_found = error_elements.any? do |element|
      element.text.include?(error) || element.text.include?("Please answer this question")
    end
    expect(error_found).to be true
  end

  within('div.govuk-form-group.govuk-form-group--error') do
    error_elements = all('p.gem-c-error-message.govuk-error-message')
    error_found = error_elements.any? do |element|
      element.text.include?(error) || element.text.include?("Please answer this question")
    end
    expect(error_found).to be true
  end
end
