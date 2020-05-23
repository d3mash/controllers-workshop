class Web::Notes::CommentsController < Web::ApplicationController
  def new
    @comment = Comment.new
    @note = Note.find(params[:note_id])
    render :new
  end

  def create
    comment_params = params[:comment]
    @comment = Comment.create(text: comment_params[:text], user: current_user, note_id: params[:note_id])
    if @comment.save
      redirect_to root_path(params[:note_id])
    end
  end
end
