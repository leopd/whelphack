class JobsitesController < ApplicationController
  before_action :set_jobsite, only: [:show, :edit, :update, :destroy]

  # GET /jobsites
  # GET /jobsites.json
  def index
    @jobsites = Jobsite.all
  end

  # GET /jobsites/1
  # GET /jobsites/1.json
  def show
  end

  # GET /jobsites/new
  def new
    @jobsite = Jobsite.new
  end

  # GET /jobsites/1/edit
  def edit
  end

  # POST /jobsites
  # POST /jobsites.json
  def create
    @jobsite = Jobsite.new(jobsite_params)

    respond_to do |format|
      if @jobsite.save
        format.html { redirect_to @jobsite, notice: 'Jobsite was successfully created.' }
        format.json { render action: 'show', status: :created, location: @jobsite }
      else
        format.html { render action: 'new' }
        format.json { render json: @jobsite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobsites/1
  # PATCH/PUT /jobsites/1.json
  def update
    respond_to do |format|
      if @jobsite.update(jobsite_params)
        format.html { redirect_to @jobsite, notice: 'Jobsite was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @jobsite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobsites/1
  # DELETE /jobsites/1.json
  def destroy
    @jobsite.destroy
    respond_to do |format|
      format.html { redirect_to jobsites_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jobsite
      @jobsite = Jobsite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jobsite_params
      params.require(:jobsite).permit(:name, :address, :zipcode, :lat, :long)
    end
end
