require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('Prime numbers path', {:type => :feature}) do
  it('Lists all the prime numbers up to inputted number.') do
    visit('/')
    fill_in('number', :with => '100')
    click_button('Click Here')
    expect(page).to have_content('[2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]')
  end
end
