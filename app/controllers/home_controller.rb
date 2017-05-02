class HomeController < ApplicationController
  def index
    @posts = Post.all
  end

  def create
  end
 def new
   @post = Post.create(title:params[:stang],content:params[:kimbab])
   redirect_to "/home/index"
 end


  def read
    @post = Post.find(params[:post_id])
  end


  def update
    @post = Post.find(params[:post_id])
  end
  
  def edit
    post = Post.find(params[:post_id])
    post.title = params[:stang]
    post.content = params[:kimbab]
    post.save
    redirect_to "/home/index"
  end
  
  def delete
    post = Post.find(params[:post_id])
    post.destroy
    redirect_to "/home/index"
  end
end
