class Web::Notes::My::NotesContoller < Web::ApplicationController
  def show
    @user = curent_user
    render :index
  end
end
