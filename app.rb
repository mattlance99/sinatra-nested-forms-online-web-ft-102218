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
      erb :'pirates/show'
    end

  end
end
