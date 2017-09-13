require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('Tamagotchi website', {:type => :feature}) do
  it 'Hatches a Tamagotchi' do
    visit('/')
    fill_in('name', :with => "bob")
    click_button('Hatch!')
    expect(page).to have_content("bob")
  end
  it 'Decreases stats over time' do
    visit('/')
    fill_in('name', :with => "bob")
    select 'Nightmare', from: 'game-mode'
    click_button('Hatch!')
    sleep(11)
    click_button('Check')
    expect(page).to have_content("bob is dead")
  end
end
