class WelcomeController < ApplicationController
  def test
    response = HTTParty.get("http://api.openweathermap.org/data/2.5/weather?zip=27615,us&units=imperial&appid=#{ENV["open_weather_map_key"]}")

    @location = response["name"]
    @temp = response["main"]["temp"]
    @cloudiness = response["clouds"]["all"]
    @weather_icon = response["weather"][0]["icon"]
    @weather_description = response["weather"][0]["description"]
    @windiness = response["wind"]["speed"]
    
  end

  def index
  end
end
