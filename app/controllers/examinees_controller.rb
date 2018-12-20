class ExamineesController < ApplicationController
  before_action :set_examinee, only: [:show, :edit, :update, :destroy]


  def index
    @examinees = Examinee.all
  end


  def show

  end


  def new
    @examinee = Examinee.new
  end


  def edit
    
  end


  def create
    @examinee = Examinee.new(examinee_params)

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

  private

    def set_examinee
      @examinee = Examinee.find(params[:id])
    end


    def examinee_params
      params.fetch(:examinee, {})
    end
end
