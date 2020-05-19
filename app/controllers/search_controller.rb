class SearchController < ApplicationController
  def index
    conn = Faraday.new('https://www.potterapi.com/v1')
    # response = conn.get("/houses?key=#{ENV['HP_API_KEY']}")
    response = conn.get('/sortinghat')
    json = JSON.parse(response.body, symbolize_names: true)
    binding.pry
  end
end