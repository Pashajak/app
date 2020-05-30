class IndexController < ApplicationController
  def index
    @brands = Brand.all
  end

  def models
    render json: ['kek', 'lol', 'korvalol']
  end
end
