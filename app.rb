require 'sinatra/base'

class Diary < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/add_entry' do
    erb :add_entry
  end

  post '/add_entry' do
    
  end
end