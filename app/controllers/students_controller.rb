class StudentsController < ApplicationController

  before_action :set_student, only: [:edit, :update, :show]
  before_action :authenticate_user!


  # =============================
  # GET Request - Renders [.html]
  # =============================
  def new
    @student = Student.new
  end

  # =============================
  # GET Request - Renders [.html]
  # =============================
  def edit
  end

  # =============================
  # GET Request - Renders [.html]
  # =============================
  def show
    @this_student = "#{@student.first_name} #{@student.last_name}"
  end

  # ====================
  # POST Request [.html]
  # POST Request [.json]
  # ====================
  def create
    @student = Student.new(student_params)
    @student.user_id = current_user.id

    respond_to do |format|
      if @student.save
        this_dojo = Dojo.find(params[:dojo_id])
        # format.html { redirect_to dojo_student_url, notice: 'Student was successfully created.' }
        format.html { redirect_to dojo_path(this_dojo), notice: 'Student was successfully created.' }
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :new }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # =========================
  # PATCH/PUT Request [.html]
  # PATCH/PUT Request [.json]
  # =========================
  def update
    respond_to do |format|
      if @student.update(student_params)
        # format.html { redirect_to dojo_student_url, notice: 'Student was successfully updated.' }
        format.html { redirect_to dojo_student_path(@student), notice: 'Student was successfully updated.' }
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end


  # ======================
  # DELETE /student/1
  # DELETE /student/1.json
  # ======================
  def destroy
    Student.find(params[:id]).destroy
    respond_to do |format|
      format.html { redirect_to dojos_path(params[:dojo_id]), notice: 'Student was successfully deleted.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Sanatizing/Validating Parameters...
    def student_params
      params.require(:student).permit(:first_name, :last_name, :email, :dojo_id)
    end
end
