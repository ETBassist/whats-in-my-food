require 'rails_helper'
require './spec/fixtures/single_food_response'

describe 'Food' do
  it 'exists with attributes' do
    food = Food.new(SingleFoodResponse::DATA)
    expect(food.gtin_upc).to eq("070560951975")
    expect(food.description).to eq("SWEET POTATOES")
    expect(food.brand_owner).to eq("The Pictsweet Company")
    expect(food.ingredients).to eq("SWEET POTATOES.")
  end
end
