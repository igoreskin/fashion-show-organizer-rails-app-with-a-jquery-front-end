class DesignsController < ApplicationController
  before_action :authenticate_user!

  def index
    if params[:designer_id]
      @designer = Designer.find_by(id: params[:designer_id])
      @designs = @designer.designs
      flash[:notice] = "Name of the Designer: #{@designer.name.upcase}"
    elsif params[:fashion_show_id]
      set_fashion_show
      @designs = @fashion_show.designs
      flash[:notice] = "Title of the Fashion Show: #{@fashion_show.title.upcase}"
    else
      @designs = Design.all
    end
  end

  def new
    if params[:fashion_show_id]
      set_fashion_show
      @design = @fashion_show.designs.build
    elsif params[:designer_id]
      @designer = User.find(id: params[:designer_id])
      @design = @designer.designs.build
    end
  end

  def create
    set_fashion_show
    @design = @fashion_show.designs.build(design_params)
    redirect_to fashion_show_path(@fashion_show)
  end

  def show
    @design = Design.find(params[:id])
  end

  private

  def design_params
    params.require(:design).permit(:name, :style, :fashion, :designer_id, :fashion_show_id)
  end

  def set_fashion_show
    @fashion_show = FashionShow.find_by(id: params[:fashion_show_id])
  end



end
