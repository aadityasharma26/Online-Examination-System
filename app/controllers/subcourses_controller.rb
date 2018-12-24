class SubcoursesController < ApplicationController
  before_action :set_subcourse, only: [:show, :edit, :update, :destroy]

  # GET /subcourses
  # GET /subcourses.json
  def index
    @subcourses = Subcourse.all
  end

  # GET /subcourses/1
  # GET /subcourses/1.json
  def show
  end

  # GET /subcourses/new
  def new
    @subcourse = Subcourse.new
  end

  # GET /subcourses/1/edit
  def edit
  end

  # POST /subcourses
  # POST /subcourses.json
  def create
    @subcourse = Subcourse.new(subcourse_params)

    respond_to do |format|
      if @subcourse.save
        format.html { redirect_to @subcourse, notice: 'Subcourse was successfully created.' }
        format.json { render :show, status: :created, location: @subcourse }
      else
        format.html { render :new }
        format.json { render json: @subcourse.errors, status: :unprocessable_entity }
      end
    end
  end

  def home
    @subcourse = Subcourse.find(@subcourse)
  end

  # PATCH/PUT /subcourses/1
  # PATCH/PUT /subcourses/1.json
  def update
    respond_to do |format|
      if @subcourse.update(subcourse_params)
        format.html { redirect_to @subcourse, notice: 'Subcourse was successfully updated.' }
        format.json { render :show, status: :ok, location: @subcourse }
      else
        format.html { render :edit }
        format.json { render json: @subcourse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subcourses/1
  # DELETE /subcourses/1.json
  def destroy
    @subcourse.destroy
    respond_to do |format|
      format.html { redirect_to subcourses_url, notice: 'Subcourse was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subcourse
      @subcourse = Subcourse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subcourse_params
      params.fetch(:subcourse, {})
    end
end
