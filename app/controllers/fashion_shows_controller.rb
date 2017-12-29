class FashionShowsController < ApplicationController
  before_action :authenticate_user!

  def index
    @fashion_shows = FashionShow.all
  end

  def new
    @fashion_show = FashionShow.new
    @design = Design.new
    @designs = Design.all
    @fashion_show.designs.build
  end

  def show
    @fashion_show = FashionShow.find(params[:id])
  end

  def create
    @fashion_show = FashionShow.new(fashion_show_params)
    if @fashion_show.save
      redirect_to fashion_shows_path
    else
      redirect_to new_fashion_show_path
    end
  end


  private

  def fashion_show_params
    params.require(:fashion_show).permit(
      :title, :location, :venue, design_ids: [], design: [:name, :style, :fashion, :designer_id]
    )
  end

end
