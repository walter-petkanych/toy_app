class VotesController < ApplicationController

  def new
    @vote = Vote.new
    @micropost_id = params[:micropost_id]
  end

  def create
    puts(params)
    Vote.create({user_id: params[:a], micropost_id: params[:micropost_id], vote: params[:b] == 'True'})
    redirect_to '/microposts'
  end

end
