class JobsController < ApplicationController

  def index
    if params[:q].present?
      @jobs = IndeedAPI.search_jobs(q: params[:q], l: params[:l])
      #@results = @jobs.total_results
    else
      #@jobs = []
      #@results = []
    end
  end

end
