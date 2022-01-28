class BoardsController < ApplicationController
    def index
        @boards = Board.all
        # 一覧ページで登録
        @board = Board.new
    end

    def create
        @board = Board.create(board_params)
        redirect_to boards_path
    end

    def destroy
        @board = Board.find(params[:id])
        @board.destroy
        redirect_to boards_path
    end

    # createで使用するパラメータを定義
    private
        # permitで、フォームで設定している値を設定
        def board_params
            params.require(:board).permit(:name, :description)
        end
end