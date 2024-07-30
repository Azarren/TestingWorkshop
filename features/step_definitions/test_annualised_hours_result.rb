Then ('I recieve results in weeks') do
    within('div.govuk-govspeak') do
      expect(page).to have_selector('p', text: 'The statutory holiday entitlement is 5.6 weeks holiday.')
    end
  end
