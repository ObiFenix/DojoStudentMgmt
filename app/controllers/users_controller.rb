class UsersController < ApplicationController
  before_action :authenticate_user!
  def details
    @staff = User.find(params[:id])
    @this_dojo = Dojo.find(@staff.dojo_id)
    @title = @staff.admin? ? 'Admin' : 'Staff'
  end
end
