class JobsController < ApplicationController
  def index
  end

  def new
  end

  def create
    @job = Job.new(params[:article])
    @job.save
    redirect_to '/jobs'
  end
end
