class FoodFacade
  def self.search_for(food)
    response = FoodService.search_for_food(food)
    { 
      total_count: response[:totalHits],
      food_objects: response[:foods].first(10).map { |food_data| Food.new(food_data) }
    }
  end
end
