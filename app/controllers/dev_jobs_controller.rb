class DevJobsController < ApplicationController
  # GET /dev_jobs
  # GET /dev_jobs.json
  def index
    @dev_jobs = DevJob.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dev_jobs }
    end
  end

  # GET /dev_jobs/1
  # GET /dev_jobs/1.json
  def show
    @dev_job = DevJob.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dev_job }
    end
  end

  # GET /dev_jobs/new
  # GET /dev_jobs/new.json
  def new
    @dev_job = DevJob.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dev_job }
    end
  end

  # GET /dev_jobs/1/edit
  def edit
    @dev_job = DevJob.find(params[:id])
  end

  # POST /dev_jobs
  # POST /dev_jobs.json
  def create
    @dev_job = DevJob.new(params[:dev_job])

    respond_to do |format|
      if @dev_job.save
        format.html { redirect_to @dev_job, notice: 'Dev job was successfully created.' }
        format.json { render json: @dev_job, status: :created, location: @dev_job }
      else
        format.html { render action: "new" }
        format.json { render json: @dev_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dev_jobs/1
  # PUT /dev_jobs/1.json
  def update
    @dev_job = DevJob.find(params[:id])

    respond_to do |format|
      if @dev_job.update_attributes(params[:dev_job])
        format.html { redirect_to @dev_job, notice: 'Dev job was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @dev_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dev_jobs/1
  # DELETE /dev_jobs/1.json
  def destroy
    @dev_job = DevJob.find(params[:id])
    @dev_job.destroy

    respond_to do |format|
      format.html { redirect_to dev_jobs_url }
      format.json { head :ok }
    end
  end
end