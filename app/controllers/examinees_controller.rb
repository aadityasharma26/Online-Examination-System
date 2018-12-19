class ExamineesController < ApplicationController
  before_action :set_examinee, only: [:show, :edit, :update, :destroy]

  # GET /examinees
  # GET /examinees.json
  def index
    @examinees = Examinee.all
  end

  # GET /examinees/1
  # GET /examinees/1.json
  def show
  end

  # GET /examinees/new
  def new
    @examinee = Examinee.new
  end

  # GET /examinees/1/edit
  def edit
  end

  # POST /examinees
  # POST /examinees.json
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

  # PATCH/PUT /examinees/1
  # PATCH/PUT /examinees/1.json
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

  # DELETE /examinees/1
  # DELETE /examinees/1.json
  def destroy
    @examinee.destroy
    respond_to do |format|
      format.html { redirect_to examinees_url, notice: 'Examinee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_examinee
      @examinee = Examinee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def examinee_params
      params.fetch(:examinee, {})
    end
end
