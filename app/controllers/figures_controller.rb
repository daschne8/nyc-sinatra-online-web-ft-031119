class FiguresController < ApplicationController

  get '/figures/new' do
    erb :'/figures/new'
  end

  post '/figures' do
    if !params[:title].is_empty?
      @title = Title.create(params[:title])
    end
    if !params[:landmark].is_empty?
      @landmark = Landmark.create(params[:landmark])
    end
    @figure = Figure.create(params[:figure])
    binding.pry
    puts "test"
  end


end
