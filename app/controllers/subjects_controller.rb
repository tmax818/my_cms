class SubjectsController < ApplicationController
  def index
    @subjects = Subject.all
  end

  def show
  end

  def new
    @subject = Subject.new
  end

  def create
    @subject = Subject.new(subject_params)
    if @subject.save
      flash[:notice] = "Subject Created"
      redirect_to(subjects_path)
    else
      render('new')
    end
  end

  def edit
  end

  def delete
  end

  private
#this is only needed for mass assignment!!
def subject_params
  params.require(:subject).permit(:name, :position, :visible)
end
end
