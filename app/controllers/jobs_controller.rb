class JobsController < ApplicationController
  def index
    @jobs = Job.all.sort_by &:created_at
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      redirect_to '/jobs'
    else
      render 'new'
    end
  end

  def edit
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])
    if @job.update(job_params)
      redirect_to '/jobs'
    else
      render 'edit'
    end
  end

private
  def job_params
    params.require(:job).permit(:poster, :category, :location, :statusval, :description)
  end
end
