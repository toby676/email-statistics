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

end
