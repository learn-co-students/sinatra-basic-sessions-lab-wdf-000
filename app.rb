require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, "saippuakivikauppias"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    item = params["item"]
    puts params
    session[:item] = item
    @session = session
    erb :checkout
  end
end
