class DevJobsController < ApplicationController

  def index
    @dev_jobs = DevJob.all
  end

  def show
    @dev_job = DevJob.find(params[:id])
  end

  def new
    @dev_job = DevJob.new
  end

  def edit
    @dev_job = DevJob.find(params[:id])
  end

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

  def destroy
    @dev_job = DevJob.find(params[:id])
    @dev_job.destroy

    respond_to do |format|
      format.html { redirect_to dev_jobs_url }
      format.json { head :ok }
    end
  end
end