require 'rails_helper'
require './spec/fixtures/single_food_response'

describe 'Food' do
  it 'exists with attributes' do
    food = Food.new(SingleFoodResponse::DATA)
    expect(food.gtin_upc).to eq(600987)
    expect(food.description).to eq("SWEET POTATOES")
    expect(food.brand_owner).to eq("The Pictsweet Compay")
    expect(food.ingredients).to eq("SWEET POTATOES.")
  end
end
