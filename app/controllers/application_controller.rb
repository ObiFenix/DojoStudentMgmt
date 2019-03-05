class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # private
  # Use callbacks to share common setup or constraints between actions.
  def all_users
    User.order('first_name asc').all
  end

  def all_dojos
    Dojo.order('city asc').all
  end

  def admin
    current_user && current_user.admin
  end

  def current_dojo
    Dojo.find(params[:dojo_id]) if params[:dojo_id]
  end

  # def all_students
  #  Student.order('first_name asc').all
  # end

  # def all_managers
  #  Manager.order('first_name asc').all
  # end

  def us_states
    [
     ['AK', 'AK'],
     ['AL', 'AL'],
     ['AR', 'AR'],
     ['AZ', 'AZ'],
     ['CA', 'CA'],
     ['CO', 'CO'],
     ['CT', 'CT'],
     ['DC', 'DC'],
     ['DE', 'DE'],
     ['FL', 'FL'],
     ['GA', 'GA'],
     ['HI', 'HI'],
     ['IA', 'IA'],
     ['ID', 'ID'],
     ['IL', 'IL'],
     ['IN', 'IN'],
     ['KS', 'KS'],
     ['KY', 'KY'],
     ['LA', 'LA'],
     ['MA', 'MA'],
     ['MD', 'MD'],
     ['ME', 'ME'],
     ['MI', 'MI'],
     ['MN', 'MN'],
     ['MO', 'MO'],
     ['MS', 'MS'],
     ['MT', 'MT'],
     ['NC', 'NC'],
     ['ND', 'ND'],
     ['NE', 'NE'],
     ['NH', 'NH'],
     ['NJ', 'NJ'],
     ['NM', 'NM'],
     ['NV', 'NV'],
     ['NY', 'NY'],
     ['OH', 'OH'],
     ['OK', 'OK'],
     ['OR', 'OR'],
     ['PA', 'PA'],
     ['RI', 'RI'],
     ['SC', 'SC'],
     ['SD', 'SD'],
     ['TN', 'TN'],
     ['TX', 'TX'],
     ['UT', 'UT'],
     ['VA', 'VA'],
     ['VT', 'VT'],
     ['WA', 'WA'],
     ['WI', 'WI'],
     ['WV', 'WV'],
     ['WY', 'WY']
    ]
  end

  helper_method :admin, :current_dojo, :all_dojos, :us_states, :all_users, :current_dojo #, :all_students, :all_managers, :current_manager,

end
