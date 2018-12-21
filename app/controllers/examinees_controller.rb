class ExamineesController < ApplicationController
  before_action :set_examinee, only: [:show, :edit, :update, :destroy]
  before_action :require_same_user, only: [:edit, :update, :destroy]
  before_action :require_admin, only: [:destroy]
  def index
    @examinees = Examinee.all
  end


  def show

  end

  def destroy
    @examinee = Examinee.find(params[:id])
    @user.destroycles created by user
    flash[:danger] = "Examinee and all examinee created by admin have been deleted"
    redirect_to examinees_path
  end


  def new
    @examinee = Examinee.new
  end


  def edit

  end


  def create
    @examinee = Examinee.new(examinee_params)
    @examinee.user = User.first
    respond_to do |format|
      if @examinee.save
        format.html { redirect_to @examinee, notice: 'Examinee was successfully created.' }
        format.json { render :show, status: :created, location: @examinee }
      else
        format.html { render :new }
        format.json { render json: @examinee.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @examinee.update(examinee_params)
        format.html { redirect_to @examinee, notice: 'Examinee was successfully updated.' }
        format.json { render :show, status: :ok, location: @examinee }
      else
        format.html { render :edit }
        format.json { render json: @examinee.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @examinee.destroy
    respond_to do |format|
      format.html { redirect_to examinees_url, notice: 'Examinee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def set_examinee
  @examinee = Examinee.find(params[:id])
  end


  private

    def set_examinee
      @examinee = Examinee.find(params[:id])
    end


    def examinee_params
      params.fetch(:examinee, {})
    end

    def require_same_user
      if current_user != @user and !current_user.admin?
        flash[:danger] = "You can only edit your own account"
        redirect_to root_path
      end
    end

    def require_admin
      if logged_in? and !current_user.admin?
        flash[:danger] = "only admin  examinee can perform that action "
        redirect_to root_path
      end

    end
end
