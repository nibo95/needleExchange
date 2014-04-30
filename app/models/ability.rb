class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.role? :admin
        can :manage, :all

    elsif user.role? :member
        can :index, User
        can :index, Client
        can :index, Location
        can :index, Visit
        can :index, Exchange

        can :create, Client
        can :create, Visit
        can :create, Exchange

        can :show, Client
        can :show, Location
        can :show, Exchange
        can :show, Visit
    

        can :show, User do |u|
            u.id == user.id
        end

        can :update, User do |u|
            u.id == user.id
        end
    else
        can :read, Domain
    end           
  end
end
