class DesignersController < ApplicationController
  before_action :authenticate_user!

  def index
    @designers = User.all
  end

  def show
    @designer = User.find(params[:id]) 
  end

end
