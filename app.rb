require './environment'
require 'pry'
module FormsLab
  class App < Sinatra::Base
    
    get '/' do
      erb :root
    end
    
    get '/new' do
      erb :'pirates/new'
    end
    
    post '/pirates' do
      name = params[:name]
      weight = params[:weight]
      height = params[:height]
      binding.pry
      @pirate = Pirate.new(name, weight, height)
      
      params[:pirate][:ships].each do |attributes|
        Ship.new(attributes)
      end

      @ships = Ship.all

      erb :'pirates/show'
    end

  end
end
