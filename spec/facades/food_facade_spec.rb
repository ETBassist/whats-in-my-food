describe 'FoodFacade' do
  it 'returns ten food objects and a count of total hits' do
    foods = FoodFacade.search_for('sweet potatoes')

    expect(foods[:total_count]).to eq(39244)

    foods[:food_objects].each do |object|
      expect(object).to be_a(Food)
    end
  end
end
