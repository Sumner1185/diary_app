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
    redirect '/view_entries'
  end

  get '/view_entries' do
    @entries = DiaryEntry.all
    p "hello"
    p @entries
    erb :view_entries
  end
end
