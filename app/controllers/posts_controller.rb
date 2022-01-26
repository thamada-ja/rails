class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def create
    # ストロングパラメータから精査されたデータだけをインスタンスに格納
    @post = Post.new(post_params)

    # インスタンスの保存に成功した場合の処理
    if @post.save
      flash[:success] = "登録しました"
      redirect_to @post

    # インスタンスの保存に失敗した場合の処理
    else
      flash[:danger] = "失敗しました"
      render :new
    end
  end

  private

  def post_params
    params.require(:content)
  end
end
