class UsersController < ApplicationController

  def details
    @staff = User.find(params[:id])
    @this_dojo = Dojo.find(@staff.dojo_id)
    @title = @staff.admin? ? 'Admin' : 'Staff'
  end
end
