class DesJobsController < ApplicationController

  def index
    @des_jobs = DesJob.all
  end

  def show
    @des_job = DesJob.find(params[:id])
  end

  def new
    @des_job = DesJob.new
  end

  def edit
    @des_job = DesJob.find(params[:id])
  end

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

  def destroy
    @des_job = DesJob.find(params[:id])
    @des_job.destroy

    respond_to do |format|
      format.html { redirect_to des_jobs_url }
      format.json { head :ok }
    end
  end
end