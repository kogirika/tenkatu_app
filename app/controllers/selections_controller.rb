class SelectionsController < ApplicationController

  def index
    @selections = Selection.all
    @selection = Selection.new
  end

  def create
    @selection = Selection.new
    if @selection.save
      redirect_to root_path
    else
      @selections = Selection.all
      render :index
    end
  end

end
