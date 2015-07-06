class PostsController < ApplicationController
	before_action :authenticate_user!, except: [:show, :index]

#we want only current user to see/be able to crud posts.
  # def set_user
  #   @user = current_user
  #   @post = @post.user
  # end

  def index
  	@posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new post_params
    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  def show
  	@post = Post.find params[:id]
  end

  def edit
  	@post = Post.find(params[:id])
  end

  def update
  	@post = Post.find(params[:id])

    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
  	@post = Post.find(params[:id])
  	@post.destroy 
  	redirect_to posts_path
  end

  private
  	def post_params
  		params.require(:post).permit(:restaurant_name, :start_time, :end_time, :deal)
    end
end
