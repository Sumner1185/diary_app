require 'sinatra/base'
require_relative './lib/diary_entry'

class Diary < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/add_entry' do
    erb :add_entry
  end

  post '/submit_entry' do
    DiaryEntry.create(title: params['title'], entry: params['entry'])
  end
end