class PostController < ApplicationController
  def index
    @posts=Post.all
  end

  def new
  end

  def show
    @post = Post.find(params[:id])
  end
  
  def create
      Post.create(
        title: params[:title],
        content: params[:content],
        tag: params[:tag]
        )
  end
  
  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    post = Post.find(params[:id])
    post.update(
      title: params[:title],
      content: params[:content],
      tag: params[:tag]
      )
  end
  
  def delete
    post = Post.find(params[:id])
    post.destroy
  end

end
