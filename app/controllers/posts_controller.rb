class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
  end

  def create
    Post.create(
      title: params[:title],
      content: params[:content]
    )
    redirect_to :root
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(
      title: params[:title],
      content: params[:content]
    )

    redirect_to post_path(@post.id)
    # redirect_to "/posts/#{@post.id}"
    

  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    
    redirect_to root_path
    # redirect_to '/'
    # redirect_to :root
  end
end