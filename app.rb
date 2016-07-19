require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base
	
	configure do
		enable :sessions
		set :session_secret, 'somesecret'
	end

	get '/' do
		erb :index
	end
	post '/checkout' do
		session[:item] = params[:item]
		"#{ params[:item] }"
	end
end
