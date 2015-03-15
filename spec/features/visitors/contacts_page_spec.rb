# Feature: Home page
#   As a visitor
#   I want to visit the contacts page
#   So I can learn more about the website
feature 'Contacts page' do

  # Scenario: Visit the home page
  #   Given I am a visitor
  #   When I visit the home page
  #   Then I see "Welcome"
  scenario 'visit the home page' do
    visit contacts_path
    expect(page).to have_content 'Contacts List'
    expect(page).to have_content 'First Name'
    expect(page).to have_content 'Last Name'
    expect(page).to have_content 'Email'
  end

  scenario 'add a new customer' do
    visit new_contact_path
    fill_in 'first_name', with: 'Joseph'
    fill_in 'last_name', with: 'Hannah'
    fill_in 'title', with: 'VP'
    fill_in 'email', with: 'test@test.com'
    fill_in 'phone_number', with: '0298765432'
    fill_in 'mobile_number', with: '0498765432'
    fill_in 'department', with: 'Engineering'

    click_button 'Submit'

    expect(page).to have_content 'Joseph'
    expect(page).to have_content 'Hannah'
    expect(page).to have_content 'test@test.com'
  end

  scenario 'edit contact' do
    visit new_contact_path
    fill_in 'first_name', with: 'Steven'
    fill_in 'last_name', with: 'Segal'
    fill_in 'title', with: 'Black Belt'
    fill_in 'email', with: 'steven.segal@test.com'
    fill_in 'phone_number', with: '0298765432'
    fill_in 'mobile_number', with: '0498765432'
    fill_in 'department', with: 'Master'

    click_button 'Submit'

    expect(page).to have_content 'Contacts List'
    expect(page).to have_content 'Steven'
    expect(page).to have_content 'Segal'
    expect(page).to have_content 'steven.segal@test.com'

    click_link 'Edit'

    fill_in 'last_name', with: 'Wayne'

    click_button 'Submit'

    expect(page).to have_content 'Steven'
    expect(page).to have_content 'Wayne'

  end

  scenario 'delete contact' do
    visit new_contact_path
    fill_in 'first_name', with: 'Sarah'
    fill_in 'last_name', with: 'Kent'
    fill_in 'title', with: 'VP'
    fill_in 'email', with: 'sarah.kent@test.com'
    fill_in 'phone_number', with: '0298765432'
    fill_in 'mobile_number', with: '0498765432'
    fill_in 'department', with: 'Sales'

    click_button 'Submit'

    expect(page).to have_content 'Contacts List'
    expect(page).to have_content 'Sarah'
    expect(page).to have_content 'Kent'
    expect(page).to have_content 'sarah.kent@test.com'

    click_link 'Delete'

    expect(page).not_to have_content 'Sarah'
    expect(page).not_to have_content 'Kent'
  end

end
