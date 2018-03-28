class DesignersController < ApplicationController
  before_action :authenticate_user!

  def index
    @designers = User.all
    respond_to do |format|
      format.html { render :index }
      format.json { render json: @designers }
    end
  end

  def show
    @designer = User.find(params[:id])
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @designer }
    end
  end

end
