class UsersController < ApplicationController
  def index
    matching_users = User.all
    
    @list_of_users = matching_users.order({ :username => :asc })

    render({ :template => "user_templates/index"})
  end

  def show
    the_username = params.fetch("path_username")
    matching_users = User.where( :username => the_username)

    @the_user = matching_users.first

    #if the_user == nil
    #  redirect_to("/404")
    #else
      render({ :template => "user_templates/show"})
    #end
  end

  def delete
    the_username = params.fetch("path_username")

    matching_users = User.where({ :username => the_username })

    the_user = matching_users.first

    the_user.destroy

    redirect_to("/users")
  end

  def create
    a_new_user = User.new
    a_new_user.username = params.fetch("query_username")

    a_new_user.save

    redirect_to("/users/" + a_new_user.username)
  end

  def update
    user_id = params.fetch("modify_id")
    matching_users = User.where({ :id => user_id})

    @the_user = matching_users.first

    @the_user.username = params.fetch("query_username")

    @the_user.save

    redirect_to("/users/" + @the_user.username)
  end
end
