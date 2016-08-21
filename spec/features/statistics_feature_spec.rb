require 'rails_helper'

feature 'User visits statistics page' do

  before(:each) do
    sample_emails
    visit '/'
  end

  scenario 'correct page seen' do
    expect(page).to have_content('Email Statistics')
  end

  scenario 'can see emails sent' do
    expect(page).to have_content('Emails Sent: 1')
  end

  scenario 'can see emails opened' do
    expect(page).to have_content('Emails Opened: 1')
  end

  scenario 'can see click count' do
    expect(page).to have_content('Clicks: 1')
  end

  scenario 'can see user confirmation' do
    expect(page).to have_content('UserConfirmation')
  end

  scenario 'can see user confirmation count' do
    expect(page).to have_content('Click percentage: 100%')
  end

  scenario 'can see shipment type' do
    expect(page).to have_content('UserConfirmation')
  end

  scenario 'can see user confirmation count' do
    expect(page).to have_content('Open percentage: 50%')
  end


end
