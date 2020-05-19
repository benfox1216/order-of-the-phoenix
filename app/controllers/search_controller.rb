class SearchController < ApplicationController
  def index
    conn = Faraday.new(url: 'https://www.potterapi.com/v1') do |f|
      f.params['key'] = ENV['HP_API_KEY']
    end
    
    response = conn.get("houses")
    json = JSON.parse(response.body, symbolize_names: true)
    binding.pry
  end
end