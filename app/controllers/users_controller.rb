class UsersController < Devise::RegistrationsController

  # skip_before_action :require_no_authentication, only: [:details, :create, :update]
  # skip_before_action :verify_authenticity_token

  before_action :set_staff only: [:details]

  def details
    @any_staff = (@staff.students.count > 0) ? true : false
    @title = @staff.admin? ? 'Admin' : 'Staff'
  end

  # def new
  #   @staff=User.new
  # end
  #
  # # =============================
  # # GET Request - Renders [.html]
  # # =============================
  # def edit
  # end
  #
  # # ====================
  # # POST Request [.html]
  # # POST Request [.json]
  # # ====================
  # def create
  #   @staff = User.new(staff_params)
  #   @staff.dojo_id = params[:dojo_id]
  #
  #   respond_to do |format|
  #     if @staff.save
  #       this_dojo = Dojo.find(params[:dojo_id])
  #       format.html { redirect_to dojo_path(this_dojo), notice: 'Staff was successfully created.' }
  #       format.json { render :show, status: :created, location: @staff }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @staff.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  #
  # # =========================
  # # PATCH/PUT Request [.html]
  # # PATCH/PUT Request [.json]
  # # =========================
  # def update
  #   respond_to do |format|
  #     if @staff.update(staff_params)
  #       format.html { redirect_to dojo_student_path(@staff), notice: 'Staff was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @staff }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @staff.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  #
  #
  # # ======================
  # # DELETE /users/1
  # # DELETE /users/1.json
  # # ======================
  # def destroy
  #   User.find(params[:id]).destroy
  #   respond_to do |format|
  #     format.html { redirect_to dojos_path(@this_dojo), notice: 'Staff was successfully deleted.' }
  #     format.json { head :no_content }
  #   end
  # end
  #
  #
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_staff
      @staff = User.find(params[:id])
      @this_dojo = Dojo.find(params[:dojo_id])
    end
  #
  #   # Sanatizing/Validating Parameters...
  #   def staff_params
  #     params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  #   end
end
