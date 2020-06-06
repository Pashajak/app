class IndexController < ApplicationController
  def index
    @brands = Brand.order(:name).all
  end

  def models
    brand = Brand.find(params[:brand_id])
    render json: brand.models.order(:name, :year)
  end

  def show
    @troubleshoot = specified(troubleshoot_params) || common(troubleshoot_params)
    @has_next     = next_for?(@troubleshoot)
  end

  private

  def specified(params)
    Troubleshoot.find_by(params)
  end

  def common(params)
    Troubleshoot.find_by(params.merge(model_id: nil))
  end

  def next_for?(troubleshoot)
    Troubleshoot.where(root_id: troubleshoot.id).count > 0
  end

  def troubleshoot_params
    params.permit(:model_id, :code, :root_id)
  end
end
