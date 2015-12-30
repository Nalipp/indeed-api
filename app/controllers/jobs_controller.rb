class JobsController < ApplicationController

  def index
    if params[:q].present?
      @jobs = IndeedAPI.search_jobs(q: params[:q], l: params[:l])
      @jobs_san_francisco  = IndeedAPI.search_jobs(q: params[:q], l: 'san francisco')
      @jobs_denver         = IndeedAPI.search_jobs(q: params[:q], l: 'denver')
      @jobs_seattle        = IndeedAPI.search_jobs(q: params[:q], l: 'seattle')
      @jobs_new_york       = IndeedAPI.search_jobs(q: params[:q], l: 'new york')
      @jobs_chicago        = IndeedAPI.search_jobs(q: params[:q], l: 'chicago')
      @jobs_los_angeles    = IndeedAPI.search_jobs(q: params[:q], l: 'los angeles')
      @jobs_portland       = IndeedAPI.search_jobs(q: params[:q], l: 'portland')
      @jobs_austin         = IndeedAPI.search_jobs(q: params[:q], l: 'austin')
      @jobs_washington_dc  = IndeedAPI.search_jobs(q: params[:q], l: 'washington dc')
      @jobs_dallas         = IndeedAPI.search_jobs(q: params[:q], l: 'dallas')
      @jobs_boston         = IndeedAPI.search_jobs(q: params[:q], l: 'boston')
    else
      render 'index'
    end
  end

end
