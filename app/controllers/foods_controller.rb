class FoodsController < ApplicationController
  def index
    search_response = FoodFacade.search_for(params[:q])
    @total_count = search_response[:total_count]
    @foods = search_response[:food_objects]
  end
end
