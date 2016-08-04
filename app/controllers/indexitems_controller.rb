class IndexitemsController < ApplicationController
 

  def index
     @indexitems = Indexitem.all
  end

  def new
    @indexitem = Indexitem.new
  end

  def create
    @indexitem = Indexitem.new(indexitem_params)

    if @indexitem.save
      redirect_to indexitems_path, notice: "The indexitem #{@indexitem.name} has been uploaded."
    else
      render "new"
    end
  end

  def destroy
    @indexitem = Indexitem.find(params[:id])
    @indexitem.destroy
    redirect_to indexitems_path, notice:  "The indexitem #{@indexitem.name} has been deleted."
  end
  
  private
  def indexitem_params
    params.require(:indexitem).permit(:name, :attachment)
  end
end
