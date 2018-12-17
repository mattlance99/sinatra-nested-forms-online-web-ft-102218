require './environment'

module FormsLab
  class App < Sinatra::Base
    
    get '/' do
      erb :'pirates/new'
    end
    
    get '/new' do
      erb :'pirates/new'
    end
    
    post '/pirates' do
      name = params[:name]
      weight = params[:weight]
      height = params[:height]
      pirate = Pirate.new(name, weight, height)
      
      erb :'pirates/show'
    end

  end
end
