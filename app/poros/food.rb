class Food
  attr_reader :gtin_upc,
              :description,
              :brand_owner,
              :ingredients

  def initialize(response_data)
    @gtin_upc = response_data[:gtinUpc]
    @description = response_data[:description]
    @brand_owner = response_data[:brandOwner]
    @ingredients = response_data[:ingredients]
  end
end
