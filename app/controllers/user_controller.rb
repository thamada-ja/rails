class UserController < ApplicationController
  def user_create
    Post.create(:content => params[:content])
    redirect_to("/posts")
  end
end