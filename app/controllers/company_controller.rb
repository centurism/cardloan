class CompanyController < ApplicationController
  def index
    @companies = Company.all
    @q = Company.ransack(params[:id])
    @companies = @q.result
  end

  def show
    
  end
end
