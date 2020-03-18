class WelcomeController < ApplicationController
  def test
    @response = HTTParty.get("http://api.openweathermap.org/data/2.5/weather?zip=27615,us&appid=#{ENV["open_weather_map_key"]}")

    
  end

  def index
  end
end
