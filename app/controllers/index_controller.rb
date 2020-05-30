class IndexController < ApplicationController
  def index
    @brands = Brand.order(:name).all
  end

  def models
    brand = Brand.find(params[:brand_id])
    render json: brand.models.order(:name, :year)
  end
end
