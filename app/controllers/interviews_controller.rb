class InterviewsController < ApplicationController
  before_action :set_interview, only: [:edit, :update, :destroy]

  def new
    @selection = Selection.find(params[:selection_id])
    @interview = Interview.new
  end


  def create
    @interview = Interview.new(interview_params)
    if @interview.save
      redirect_to selection_path(@interview.selection_id)
    else
      render :new
    end
  end

  def edit
    @selection = Selection.find(params[:selection_id])
  end

  def update
    if @interview.update(interview_params)
      redirect_to selection_path(@interview.selection_id)
    else
      render :edit
    end
  end

  def destroy
    if @interview.destroy
      redirect_to selection_path(@interview.selection_id)
    else
      render template "slections/show"
    end
  end

  private

  def interview_params
    params.require(:interview).permit(:interview_day, :charge, :memo).merge(selection_id: params[:selection_id])
  end

  def set_interview
    @interview = Interview.find(params[:id])
  end

end
