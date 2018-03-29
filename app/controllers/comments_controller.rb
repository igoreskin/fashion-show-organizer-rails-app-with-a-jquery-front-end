class CommentsController < ApplicationController
  before_action :authenticate_user!

  def index
    set_design
    @comments = @design.comments
    respond_to do |format|
      format.html { render :index }
      format.json { render json: @comments}
    end 
  end

  def new
    set_design
    @comment = Comment.new
  end

  def create
    set_design
    @comment = @design.comments.build(comment_params)
    if @comment.save
      redirect_to design_path(@comment.design)
    else
      render 'new'
    end
  end

  def edit
    set_design
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      redirect_to design_path(@comment.design)
    else
      render 'edit'
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to designs_path
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :design_id, :designer_id)
  end

  def set_design
    @design = Design.find_by(id: params[:design_id])
  end


end
