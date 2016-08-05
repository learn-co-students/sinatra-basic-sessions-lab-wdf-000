require_relative 'config/environment'

class App < Sinatra::Base

  configure do 
    enable :sessions
    set :session_secret, "secret"
  end
  
  get '/' do
    erb :index
  end

  post '/checkout' do
    # hash = Hash[params.map {|k, v| [k.to_sym, v]}]
    # binding.pry
    session[:item] = params['item']
    @item = params['item']
    erb :checkout
  end
  
end
