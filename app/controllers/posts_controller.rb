class PostsController < ApplicationController
  def index
    @post = Post.new
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(params.require(:post).permit(:link))
    flash[:notice] = "Post was successfully added."
    redirect_to("/")
  end

end
