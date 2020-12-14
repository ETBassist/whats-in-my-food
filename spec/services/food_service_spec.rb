require 'rails_helper'

describe 'Food Service' do
  it 'can return searched-for foods' do
    response = FoodService.search_for_food('sweet potatoes')

    expect(response).to be_a(Array)

    expect(response.first).to have_key(:gtinUpc)
    expect(response.first).to have_key(:description)
    expect(response.first).to have_key(:brandOwner)
    expect(response.first).to have_key(:ingredients)
  end
end
