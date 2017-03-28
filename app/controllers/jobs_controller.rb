class JobsController < ApplicationController
  def index
    @jobs = Job.all.sort_by &:created_at
  end

  def new
  end

  def create
    @job = Job.new(job_params)
    @job.save!
    redirect_to '/jobs'
  end

  private
  def job_params
    params.require(:job).permit(:poster, :category, :location, :statusval, :description)
  end
end
