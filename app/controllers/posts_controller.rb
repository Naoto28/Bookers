class PostsController < ApplicationController
  def index
      @posts = Post.all
      @post = Post.new
  end

  def show
      @post = Post.find(params[:id])
  end

  def top
  end

  def create
      @post = Post.new(post_params)
      if @post.save
      redirect_to post_path(@post), :notice => "Book was successfully created."
      else
      redirect_to posts_path
      end
  end

  def edit
      @post = Post.find(params[:id])
  end

  def update
      @post = Post.find(params[:id])
      @post.update(post_params)
      redirect_to post_path(@post)
  end

  def destroy
      @post = Post.find(params[:id])
      @post.destroy
      redirect_to posts_path
  end

  private

  def post_params
      params.require(:post).permit(:title, :body)
  end
end














