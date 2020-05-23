# frozen_string_literal: true

class Web::NotesController < Web::ApplicationController
  def index
    @notes = Note.all
    render :index
  end

  def new
    @note = Note.new
    render :new
  end

  def create
    note_params = params[:note]
    @note = Note.create(header: note_params[:header], content: note_params[:content], user: current_user)
    if @note.save
      redirect_to :root
    else
      puts 'failed'
    end
  end
end
