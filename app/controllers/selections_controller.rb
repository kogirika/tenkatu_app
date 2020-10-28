class SelectionsController < ApplicationController
  before_action :set_selection, only: [:show, :destroy, :edit, :update]

  def index
    @selections = Selection.descope_user(current_user.id)
    @selection = Selection.new
  end

  def create
    @selection = Selection.new(selection_params)
    if @selection.save
      redirect_to root_path
    else
      @selections = Selection.descope_user(current_user.id)
      render :index
    end
  end

  def show #処理前にset_selectionを呼ぶ
    @interviews = Interview.descope_selection(params[:id])
  end

  def edit #処理前にset_selectionを呼ぶ
  end

  def update #処理前にset_selectionを呼ぶ
    if @selection.update(selection_params)
      redirect_to selection_path(params[:id])
    else
      render :edit
    end
  end

  def destroy #処理前にset_selectionを呼ぶ
    if @selection.destroy
      redirect_to root_path
    else
      render :show
    end
  end

  private

  def selection_params
    params.require(:selection).permit(:company_name, :position, :entry_day, :phase_id,
                                      :live_flg, :agent, :memo, :url ,:sumally, :appeal, :concern,
                                      :place, :refusal_reason).merge(user_id: current_user.id)
  end

  def set_selection
    @selection = Selection.find(params[:id])
  end
end
