When('I input a hours worked per week') do
    fill_in('response', with: 'a')
    expect(page).to have_button 'Continue'
    click_button('Continue')
  end

  When('I input a days worked per week') do
    fill_in('response', with: 'a')
    expect(page).to have_button 'Continue'
    click_button('Continue')
  end
