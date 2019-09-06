class MuttersController < ApplicationController

  def index
  end

  def list
    @mutters = Mutter.all
  end

  def new
    @mutter = Mutter.new
  end

  def create
    @mutter = Mutter.new(mutter_params)
    if @mutter.save
      #flash[:success] = "投稿が完了しました"
      redirect_to mutters_path
    else
      render :new
    end
  end

  def show
    @mutter = Mutter.find(params[:id])
  end

  def mutter_params
    params.require(:mutter).permit(:content)
  end

end
