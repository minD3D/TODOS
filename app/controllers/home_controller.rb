class HomeController < ApplicationController
  def index
    @posts = Post.all
  end

  def create
    @post = Post.new(title:params[:title], content:params[:content])

    @imgUploader = ImgUploader.new
    @imgUploader.store!(params[:img])

    @post.img_url = @imgUploader.url

    @post.save
    redirect_to '/'
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to '/'
  end

  def read
    @post = Post.find(params[:id])

  end

  def update
    @post = Post.find(params[:id])
  end

  def real_update
    @post = Post.find(params[:id])
    @post.title = params[:title]
    @post.content = params[:content]
    @post.img_url = params[:img_url]
    @post.save
    redirect_to '/'
  end

  def photo
    @post = Post.find(params[:id])
    @posts = Post.all
    @post.img_url = params[:img_url]
  end

  def comment_create
    @comment = Comment.new(post_id:params[:post_id], title:params[:title], content:params[:content])
    @comment.save
    redirect_to :back
  end

  def comment_destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to :back
  end

  def reply_create
    @comment = Comment.new(post_id:params[:post_id], content:params[:content])
    @comment.save
    redirect_to :back
  end

  def reply_destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to :back
  end
end
