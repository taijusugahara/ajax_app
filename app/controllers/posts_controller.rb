class PostsController < ApplicationController

  def index # indexアクションを定義した
    @posts = Post.order(id: "DESC")
  end

  def new
  end

  def create
    # .create = .new + .save
    Post.create(content: params[:content])
    redirect_to action: :index
    # @post = Post.new(content: params[:content])
    # @post.save
  end

end




