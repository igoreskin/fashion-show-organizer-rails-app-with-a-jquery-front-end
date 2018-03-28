class FashionShowsController < ApplicationController
  before_action :authenticate_user!

  def index
    @locations = FashionShow.locations
    if params.include?('location')
      @fashion_shows = FashionShow.select_by_location(params[:location])
    else
      @fashion_shows = FashionShow.all
    end
    respond_to do |format|
      format.html { render :index }
      format.json { render json: @fashion_shows }
    end
  end

  def new
    @fashion_show = FashionShow.new
    @design = Design.new
    @designs = Design.all
    @fashion_show.designs.build
  end

  def show
    @fashion_show = FashionShow.find(params[:id])
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @fashion_show }
    end
  end

  def create
    @fashion_show = FashionShow.new(fashion_show_params)
    if @fashion_show.save
      redirect_to fashion_shows_path
    else
      @designs = Design.all
      render 'fashion_shows/new'
    end
  end

  def destroy
    @fashion_show = FashionShow.find(params[:id])
    @fashion_show.destroy
    redirect_to fashion_shows_path
  end


  private

  def fashion_show_params
    params.require(:fashion_show).permit(
      :title, :location, :venue, design_ids: [], design: [:name, :style, :fashion, :designer_id, :fashion_show_id]
    )
  end

end
