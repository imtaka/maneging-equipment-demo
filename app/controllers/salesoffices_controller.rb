class SalesofficesController < ApplicationController
  before_action :set_salesoffice, only: [:edit, :update, :destroy]
  
  def index
    @salesoffice = Salesoffice.new
    @salesoffices = Salesoffice.all
  end

  def create
    @salesoffice = Salesoffice.new(salesoffice_params)
    if @salesoffice.save
      redirect_to salesoffices_path
    else
      @salesoffices = Salesoffice.all
      render 'index'
    end
  end

  def edit
  end

  def update
    if @salesoffice.update(salesoffice_params)
      redirect_to salesoffices_path
    else
      render 'edit'
    end
  end

  def destroy
    @salesoffice.destroy
    redirect_to salesoffices_path
  end

  private

    def set_salesoffice
      @salesoffice = Salesoffice.find(params[:id])
    end

    def salesoffice_params
      params.require(:salesoffice).permit(:name)
    end
  end

end
