class MuttersController < ApplicationController

  def index
  end

  def new
    @mutter= Mutter.new
  end

end
