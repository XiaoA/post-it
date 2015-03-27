class PostsController < ApplicationController
  def index
    @post = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.creator = User.first #TODO: change once we have authentication

    if @post.save
      flash[:notice] = "Your post was created."
      redirect_to posts_path
    else
      render :new
    end
  end

  def edit
    @post = Post.find(parms[:id])
  end

  def update
     
  end

  private

  def post_params
    params.require(:post).permit!
  end
end
