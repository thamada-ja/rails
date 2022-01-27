class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  def user_create
  end
end