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
      breed = params[:breed]
      age = params[:age]
      puppy = Puppy.new(@name, @breed, @age)
      
      erb :'pirates/show'
    end

  end
end
