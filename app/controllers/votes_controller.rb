class VotesController < ApplicationController

  def new
    @vote = Vote.new
    @micropost_id = params[:micropost_id]
  end

  def create)
    #метод require витягує інформацію з хєша vote, а метод permit знаходить задані ключі і робить 
    #з ними обєкт, приклад: {user_id: params{vote: user_id}}
    @vote = Vote.create(params.require(:vote).permit(:vote, :user_id, :micropost_id))
    #@vote = Vote.create({user_id: params[:vote][:user_id], 
    #                    micropost_id: params[:vote][:micropost_id],
    #                    vote: params[:vote][:vote] == "1"})
    #render text: "OK"
    #хелпер microposts_path витягує url з файлу роутс та перенаправляє по заданій адресі у файлі роутс 
    redirect_to microposts_path
  end

end
