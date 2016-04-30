class CompaniesController < ApplicationController
  def index
    @companies = Company.all
    @q = Company.search(params[:q])
    @companies = @q.result
  end

  def search
    @companies = Company.all
    @companies = Company.search(rate_lt: params[:q][:rate_lt]).result
  end



end
