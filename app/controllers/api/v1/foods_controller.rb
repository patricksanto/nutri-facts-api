class Api::V1::FoodsController < Api::V1::BaseController
  def index
    @foods = policy_scope(Food)
  end
end
