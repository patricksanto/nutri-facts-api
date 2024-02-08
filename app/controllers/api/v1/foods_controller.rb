class Api::V1::FoodsController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User, except: [:index, :show]
  before_action :set_food, only: [:show, :update]

  def index
    @foods = policy_scope(Food)
  end

  def show
  end

  def update
    if @food.update(food_params)
      render :show
    else
      render_error
    end
  end

  private

  def set_food
    @food = Food.find(params[:id])
    authorize @food
  end

  def food_params
    params.require(:food).permit(:name, :calories)
  end

  def render_error
    render json: { errors: @food.errors.full_messages },
      status: :unprocessable_entity
  end
end
