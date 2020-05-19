class SearchController < ApplicationController
  def index
    conn = Faraday.new(url: 'https://www.potterapi.com/v1') do |f|
      f.params['key'] = ENV['HP_API_KEY']
    end
    
    response = conn.get('characters')
    json = JSON.parse(response.body, symbolize_names: true)
    
    @members = json.map do |char|
      if char[:house] == "#{params[:house]}" && char[:orderOfThePhoenix] == true
        char
      end
    end.compact
  end
end