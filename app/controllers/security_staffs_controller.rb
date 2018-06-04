class SecurityStaffsController < ApplicationController
  before_action :set_security_staff, only: [:show, :edit, :update, :destroy]

  # GET /security_staffs
  # GET /security_staffs.json
  def index
    @security_staffs = SecurityStaff.all
  end

  # GET /security_staffs/1
  # GET /security_staffs/1.json
  def show
    redirect_to '/security_staffs'
  end

  # GET /security_staffs/new
  def new
    @security_staff = SecurityStaff.new
  end

  # GET /security_staffs/1/edit
  def edit
  end

  # POST /security_staffs
  # POST /security_staffs.json
  def create
    @security_staff = SecurityStaff.new(security_staff_params)

    respond_to do |format|
      if @security_staff.save
        format.html { redirect_to @security_staff, notice: 'Security staff was successfully created.' }
        format.json { render :show, status: :created, location: @security_staff }
      else
        format.html { render :new }
        format.json { render json: @security_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /security_staffs/1
  # PATCH/PUT /security_staffs/1.json
  def update
    respond_to do |format|
      if @security_staff.update(security_staff_params)
        format.html { redirect_to @security_staff, notice: 'Security staff was successfully updated.' }
        format.json { render :show, status: :ok, location: @security_staff }
      else
        format.html { render :edit }
        format.json { render json: @security_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /security_staffs/1
  # DELETE /security_staffs/1.json
  def destroy
    @security_staff.destroy
    respond_to do |format|
      format.html { redirect_to security_staffs_url, notice: 'Security staff was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_security_staff
      @security_staff = SecurityStaff.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def security_staff_params
      params.require(:security_staff).permit(:staff_info, :guard_name, :salary, :work_timing, :daily_task)
    end
end
