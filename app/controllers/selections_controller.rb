class SelectionsController < ApplicationController

  def index
    @selections = Selection.all
    @selection = Selection.new
  end

  def create
    @selection = Selection.new(selection_params)
    live_flg = true
    if @selection.save
      redirect_to root_path
    else
      @selections = Selection.all
      render :index
    end
  end

  private

  def selection_params
    params.require(:selection).permit(:company_name, :position, :entry_day, :phase_id, :live_flg, :agent, :memo).merge(user_id: current_user.id)
  end
end
