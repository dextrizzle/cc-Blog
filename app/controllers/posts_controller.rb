class PostsController < ApplicationController
  def index
    @post = Post.order(created_at: :desc).last(32)
  end
  def new
    @post = Post.new
  end
  def create
    post_params = params.require(:post,:category).permit([:title,:body,:name])
    @post = Post.new post_params
  end
  def show
    @post = Post.find params[:id]
    render 'posts/show'
  end
end
