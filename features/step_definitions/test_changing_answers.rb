Then ('I am navigated to the {string} page') do |header|
  expect(page).to have_content header
  expect(page).to have_button 'Continue'
end
