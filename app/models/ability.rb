class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.role == 'admin'
      can :manage, :all
    else
      can :manage, Recipe, user_id: user.id
      can :manage, Food, user_id: user.id
    end
    # can read recipes where public is true
    can :read, Recipe, public: true
  end
end
