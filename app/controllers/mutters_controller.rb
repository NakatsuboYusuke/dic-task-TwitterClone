class MuttersController < ApplicationController
  before_action :set_mutter, only: [:show, :edit, :update]

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
  end

  def edit
  end

  def update
    if @mutter.update(mutter_params)
      #flash[:update] = "投稿を更新しました"
      redirect_to mutter_path
    else
      render :edit
    end
  end

  private

  def mutter_params
    params.require(:mutter).permit(:content)
  end

  def set_mutter
    @mutter = Mutter.find(params[:id])
  end

end
