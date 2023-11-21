<% module_namespacing do -%>
class <%= class_name %>Policy < ApplicationPolicy
  def index?
    super
  end

  def show?
    super
  end

  def create?
    super
  end

  def update?
    super
  end

  def destroy?
    super
  end

  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end
end
<% end -%>
