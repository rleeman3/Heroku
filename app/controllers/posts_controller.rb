class PostsController < ApplicationController
	before_action :authenticate_user!, except: [:index, :show]

#we want only current user to see/be able to crud posts.
  # def set_user
  #   @user = current_user
  #   @post = @post.user
  # end

  def index
  	@posts = Post.all
  end

  def dashboard
    @posts = current_user.posts
  end

  def feedback
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build post_params
    if @post.save
      redirect_to dashboard_path
    else
      render 'new'
    end
  end

  def show
  	@post = Post.find params[:id]
  end

  def edit
  	@post = current_user.posts.find(params[:id])
  end

  def update
  	@post = current_user.posts.find(params[:id])
    if @post.update(post_params)
      redirect_to dashboard_path
    else
      render 'edit'
    end
  end

  def destroy
  	@post = current_user.posts.find(params[:id])
  	@post.destroy 
  	redirect_to dashboard_path
  end

  private
  	def post_params
  		params.require(:post).permit(:restaurant_name, :start_time, :end_time, :deal)
    end
end
