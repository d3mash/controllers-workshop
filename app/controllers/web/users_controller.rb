class Web::UsersController < Web::ApplicationController
  def show
    @user = User.find(params[:id])
    render :show
  end
end
