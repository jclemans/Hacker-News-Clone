class VotesController < ApplicationController


  def create
    @post = Post.find(params[:vote][:post_id])
    @post.votes.create
    redirect_to ("/")

  end
end
