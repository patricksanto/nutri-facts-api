class FoodPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def show?
    true
  end

  def update?
    user.admin? || record.user == user
  end

  def create?
    !user.nil?
  end

  def destroy?
    user.admin?
  end
end
