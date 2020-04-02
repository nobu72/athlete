class PostsController < ApplicationController
  before_action :logged_in_user



  def index
    @tweets = Tweet.all
    @posts = Post.all.order("id DESC")
 
  end

  def new
    @post = Post.new
  end

  def create
  Post.create(post_params)
  redirect_to root_path
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comments = @post.comments.includes(:user)

  end

  private
  def post_params
    params.require(:post).permit(:text, :video)
  end

  def logged_in_user
    unless logged_in?
      flash[:danger] = "Please log in."
      redirect_to new_user_session_path
    end
end

def logged_in?
  !current_user.nil?
end




end
