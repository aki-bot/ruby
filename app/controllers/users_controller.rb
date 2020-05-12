class UsersController < ApplicationController
  def new
    # インスタンス変数がないとエラーになる(説明不足)
    # new.html.erbのViewファイルで送信した内容を保存したい
    # だからここでは紐付けるために行う
    # Controllerでnewメゾットを定義することでインスタンス変数である「@user」にデータが保存される
    # 他のファイルでも保存に関するメゾットを使いたいから「インスタンスメゾット」
    # モデルはデータベースにデータ操作の命令を出す
    # データベースは該当するデータをモデルに返す
    # モデルにあるデータをインスタンスメゾットである@userに格納していることになる
    # Controllerは得られたデータをViewに返す
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path, success: '登録が完了しました'
    else
      flash.now[:danger] = "登録に失敗しました"
      render :new
    end
  end
  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
