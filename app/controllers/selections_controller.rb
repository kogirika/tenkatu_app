class SelectionsController < ApplicationController
  before_action :set_selection, only: [:show]

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

  def show #処理は共通化
  end

  def destroy
    @selection = Selection.find(params[:id])
    if @selection.destroy
      redirect_to root_path
    else
      render :show
    end
  end

  private

  def selection_params
    params.require(:selection).permit(:company_name, :position, :entry_day, :phase_id, :live_flg, :agent, :memo).merge(user_id: current_user.id)
  end

  def set_selection
    @selection = Selection.find(params[:id])
  end
end
