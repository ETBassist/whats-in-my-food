class FoodsController < ApplicationController
  def index
    search_response = get_json("/fdc/v1/foods/search?query=#{params[:q]}")
    @foods = search_response[:foods].first(10)
  end

  private 

  def get_json(uri)
    response = conn.get(uri)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: 'https://api.nal.usda.gov') do |faraday|
      faraday.params['api_key'] = ENV['FOOD_API_KEY']
    end
  end
end
