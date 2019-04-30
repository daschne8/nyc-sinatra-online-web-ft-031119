class FiguresController < ApplicationController

  get '/figures/new' do
    erb :'/figures/new'
  end

  post '/figures' do
    if !params[:title].empty?
      @title = Title.create(params[:title])
    end
    if !params[:landmark].empty?
      @landmark = Landmark.create(params[:landmark])
    end
    @figure = Figure.create(params[:figure])
    @figure.landmarks << @landmark
    @figure.titles << @title
    @figure.save
    binding.pry
    puts "test"
  end


end
