class BoardsController < ApplicationController
    def index
        @boards = Board.all
    end

    # 新規作成
    def new
        @board = Board.new
    end

    def create
        @board = Board.create(board_params)
        redirect_to boards_path
    end

    # 編集
    def edit
        @board = Board.find(params[:id])
    end

    # 更新
    def update
        @board = Board.find(params[:id])
        @board.update(board_params)
        redirect_to boards_path
    end

    # 削除
    def destroy
        @board = Board.find(params[:id])
        @board.destroy
        redirect_to boards_path
    end

    # パラメータ定義
    private
        # permitで、フォームで設定している値を設定
        def board_params
            params.require(:board).permit(:name, :description)
        end
end