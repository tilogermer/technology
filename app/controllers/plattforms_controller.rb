class PlattformsController < ApplicationController
  before_action :find_plattform, only: [:show, :edit, :update, :destroy]

  def index

    if params[:tag]
      @plattforms = Plattform.tagged_with(params[:tag])
      
    else
      @plattforms = Plattform.all

    end
    
  end

  def new
    @plattform = Plattform.new
  end

  def create
    @plattform = Plattform.new(plattform_params)
    
    if @plattform.save
       redirect_to root_path
    else 
      render 'new'
    end
  end
 

  def edit
  end

  def update
    @plattform.update(plattform_params)
    flash[:notice] = 'Platform updated'
    redirect_to plattforms_path
  end

  def show
    @plattforms = Plattform.all
    @tags = @plattform.tags
  end

  def destroy
    @plattform.destroy
    flash[:notice] = "Platform removed"
    redirect_to plattforms_path
  end

  private
  def plattform_params
    params.require(:plattform).permit(:name, :description, :owner, :account, :account_date_start, :price,
     :slug, :image, :all_tags)
  end

  def find_plattform
    @plattform = Plattform.friendly.find(params[:id])
  end
end
