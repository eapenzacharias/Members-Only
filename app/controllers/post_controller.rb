class PostController < ApplicationController
  before_action :signedin_user, only: [ :new, :create]

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:success] = "Post has been created"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def index
    @posts = Post.all
  end

  def signedin_user
    unless signed_in?
      redirect_to signin_path
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :user_id)
  end
end
