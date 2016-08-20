require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/checkout' do
    # binding.pry
    @item = Item.new(params[:item])
    session[:item] = @item.name
    @session = session
    erb :purchase
  end

  configure do
    enable :sessions
  end



end
