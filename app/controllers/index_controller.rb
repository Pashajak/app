class IndexController < ApplicationController
  def index
    @brands = Brand.order(:name).all
  end

  def models
    brand = Brand.find(params[:brand_id])
    render json: brand.models.order(:name, :year)
  end

  def show
    @troubleshoot =
      Troubleshoot.find_by(model_id: params[:model_id], code: params[:code]) ||
      Troubleshoot.find_by!(model_id: nil, code: params[:code])
  end
end
