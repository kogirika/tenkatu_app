class SelectionsController < ApplicationController
  before_action :set_selection_one, only: [:show, :destroy, :edit, :update]

  def index
    @selection = Selection.new

    live_search = search_params[:live_search]
    phase_search = search_params[:phase_search]

    # 一覧の初期表示条件を設定（選考中で全てのフェーズ）
    live_search ||= 1
    phase_search ||= "all"

    # 表示条件でレコードを取得する
    @selections = Selection.descoped_selection(current_user.id, live_search, phase_search)

    # 現在の表示条件を画面に出力するために番号を変換
    @live_search = display_live_search(live_search)
    @phase_search = display_phase_search(phase_search)

  end

  def create
    @selection = Selection.new(selection_params)
    if @selection.save
      redirect_to root_path
    else
      live_search ||= 1
      phase_search ||= "all"

      # 表示条件でレコードを取得する
      @selections = Selection.descoped_selection(current_user.id, live_search, phase_search)

      # 現在の表示条件を画面に出力するために番号を変換
      @live_search = display_live_search(live_search)
      @phase_search = display_phase_search(phase_search)
      
      render :index
    end
  end

  def show #処理前にset_selection_oneを呼ぶ
  end

  def edit #処理前にset_selection_oneを呼ぶ
  end

  def update #処理前にset_selection_oneを呼ぶ
    if @selection.update(selection_params)
      redirect_to selection_path(params[:id])
    else
      render :edit
    end
  end

  def destroy #処理前にset_selection_oneを呼ぶ
    if @selection.destroy
      redirect_to root_path
    else
      render :show
    end
  end

  private

  #paramsメソッドーーーーーーーーーーーーーーーーーー
  def selection_params
    params.require(:selection).permit(:company_name, :position, :entry_day, :phase_id,
                                      :live_flg, :agent, :memo, :url ,:sumally, :appeal, :concern,
                                      :place, :refusal_reason).merge(user_id: current_user.id)
  end

  def search_params
    params.permit(:live_search, :phase_search).merge(user_id: current_user.id)
  end

  #事前セット用メソッドーーーーーーーーーーーーーーーーー
  def set_selection_one #１レコードを返す
    @selection = Selection.find(params[:id])
  end

  #その他メソッドーーーーーーーーーーーーーーーーー
  def display_live_search(live_search)
    case live_search
    when "all"; "全て"
    when "1";" 選考中"
    when "0"; "落選"
    end
  end

  def display_phase_search(phase_search)
    case phase_search
    when "all"; "全て"
    when "0";" 応募"
    when "1"; "書類選考"
    when "2"; "試験"
    when "3"; "一次面接"
    when "4"; "二次面接"
    when "5"; "最終面接"
    when "6"; "その他"
    end
  end

end
