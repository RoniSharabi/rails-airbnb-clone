class DealPolicy < ApplicationPolicy

  def index?
    return true
  end

  def create?
    return true
  end

  def update?
    record.user == user || (record.alibi && record.alibi.user == user)
  end

  def destroy?
    update?
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
