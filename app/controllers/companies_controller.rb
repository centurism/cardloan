class CompaniesController < ApplicationController
  def index
    @companies = Company.all
    @q = Company.search(params[:id])
    @companies = @q.result
  end

  def search
    @companies = Company.all
    @q = Company.search(params[:id])
    @companies = @q.result
  end



end
