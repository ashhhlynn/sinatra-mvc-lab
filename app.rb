require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do
      erb :user_input 
    end
  
    post '/piglatinize' do
      input_from_user = params[:word]
      @pig_latinizer = PigLatinizer.new(input_from_user)
    
    
    end
    
  end