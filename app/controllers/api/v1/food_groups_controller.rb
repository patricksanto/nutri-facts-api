class Api::V1::FoodGroupsController < Api::V1::BaseController
  def index
    @food_groups = policy_scope(FoodGroup)
  end

  def show
    @food_group = FoodGroup.find(params[:id])
    authorize @food_group
  end
end
