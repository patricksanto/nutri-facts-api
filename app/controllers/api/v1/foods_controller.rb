class Api::V1::FoodsController < Api::V1::BaseController
  def index
    @foods = policy_scope(Food)
  end

  def show
    @food = Food.find(params[:id])
    authorize @food
  end
end
