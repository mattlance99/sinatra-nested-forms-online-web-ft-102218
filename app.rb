require './environment'

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
      @pirate = Pirate.new(name, weight, height)
      

      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end
      @ships = Ship.all

      erb :'pirates/show'
    end

  end
end
