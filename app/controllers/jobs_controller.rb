class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def new
  end

  def create
    @job = Job.new(job_params)
    @job.save
    redirect_to '/jobs'
  end

  private
  def job_params
    params.require(:job).permit(:category, :location, :statusval, :description)
  end
end
