class DesJobsController < ApplicationController
  # GET /des_jobs
  # GET /des_jobs.json
  def index
    @des_jobs = DesJob.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @des_jobs }
    end
  end

  # GET /des_jobs/1
  # GET /des_jobs/1.json
  def show
    @des_job = DesJob.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @des_job }
    end
  end

  # GET /des_jobs/new
  # GET /des_jobs/new.json
  def new
    @des_job = DesJob.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @des_job }
    end
  end

  # GET /des_jobs/1/edit
  def edit
    @des_job = DesJob.find(params[:id])
  end

  # POST /des_jobs
  # POST /des_jobs.json
  def create
    @des_job = DesJob.new(params[:des_job])

    respond_to do |format|
      if @des_job.save
        format.html { redirect_to @des_job, notice: 'Des job was successfully created.' }
        format.json { render json: @des_job, status: :created, location: @des_job }
      else
        format.html { render action: "new" }
        format.json { render json: @des_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /des_jobs/1
  # PUT /des_jobs/1.json
  def update
    @des_job = DesJob.find(params[:id])

    respond_to do |format|
      if @des_job.update_attributes(params[:des_job])
        format.html { redirect_to @des_job, notice: 'Des job was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @des_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /des_jobs/1
  # DELETE /des_jobs/1.json
  def destroy
    @des_job = DesJob.find(params[:id])
    @des_job.destroy

    respond_to do |format|
      format.html { redirect_to des_jobs_url }
      format.json { head :ok }
    end
  end
end