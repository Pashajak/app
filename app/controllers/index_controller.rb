class IndexController < ApplicationController
  def index
    @brands = Brand.all
  end

  def models
    Logger.info "MODELS"
  end
end
