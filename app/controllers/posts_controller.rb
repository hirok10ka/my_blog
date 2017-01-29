class PostsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @post = Post.new # フォーム用の空のインスタンスを生成する。
  end

  def create
    @post = Post.new(post_params) # ストロングパラメータを引数に
    @post.save # saveをしてデータベースに保存する。
    redirect_to "/posts/#{@post.id}" # showページにリダイレクト
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  private

  def post_params # ストロングパラメータを定義する
    params.require(:post).permit(:title, :body, :category)
  end
end
