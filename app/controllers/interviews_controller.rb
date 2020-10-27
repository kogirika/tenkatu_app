class InterviewsController < ApplicationController

  def new
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

  private

  def interview_params
    params.require(:interview).permit(:interview_day, :charge, :memo).merge(selection_id: params[:selection_id])
  end

end
