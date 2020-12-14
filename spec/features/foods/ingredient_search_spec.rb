require 'rails_helper'

describe 'As a user' do
  describe 'if I visit / and search for sweet potatoes' do
    it 'I should see a list of ten food' do
      visit '/'
      fill_in :q, with: 'sweet potatoes'

      click_button('Search')
      expect(current_path).to eq('/foods')

      expect(page).to have_content('Total Hits: 39244')
      expect(page).to have_selector('.gtin-upc', count: 10)
      expect(page).to have_selector('.description', count: 10)
      expect(page).to have_selector('.brand-owner', count: 10)
      expect(page).to have_selector('.ingredients', count: 10)
      expect(page).to have_content('SWEET POTATOES')
    end

    it "If I search for nonsense I see that no results were found" do
      visit '/'
      fill_in :q, with: 'awholelottagibberish'
      click_button('Search')

      expect(page).to have_content('Total Hits: 0')
      expect(page).to have_content('No Foods Found')
    end
  end
end
