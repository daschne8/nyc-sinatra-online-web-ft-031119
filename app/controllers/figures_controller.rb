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
    redirect "/figures/#{@figure.id}"
  end

  get '/figures/:id' do
    @figure = Figure.find(id: params[:id])
    erb :'/figures/show'
  end


end
