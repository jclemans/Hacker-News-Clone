class PostsController < ApplicationController
  def index
    @post = Post.new
    @posts = Post.all
    # @vote = @post.votes
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params.require(:post).permit(:link))
    if @post.save
      flash[:notice] = "Post was successfully added."
      redirect_to("/")
    else
      render new_post_path
    end
  end

  def show
    @post = Post.find(params[:id])
    @votes = @post.votes
    @vote_count = @votes.count
  end

  def update

  end
end
