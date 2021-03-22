class PostsController < ApplicationController

  def index # indexアクションを定義した
    @posts = Post.all
  end

  def new
  end

  def create
    # .create = .new + .save
    Post.create(content: params[:content])
    # @post = Post.new(content: params[:content])
    # @post.save
  end

end




