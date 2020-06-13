class IndexController < ApplicationController
  def index
    @brands = Brand.order(:name).all
  end

  def models
    brand = Brand.find(params[:brand_id])
    render json: brand.models.order(:name, :year)
  end

  def show
    @troubleshoot = Troubleshoot.root(params[:model_id], params[:code], params[:root_id])
    @children     = Troubleshoot.children(@troubleshoot) if @troubleshoot.present?
  end
end
