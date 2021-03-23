class PostsController < ApplicationController

  def index # indexアクションを定義した
    @posts = Post.order(id: "DESC")
  end

  def new
  end

  def create
    # .create = .new + .save
    
    post = Post.create(content: params[:content])
    render json:{ post: post }
    # @post = Post.new(content: params[:content])
    # @post.save
  end

end




