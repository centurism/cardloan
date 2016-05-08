class CompaniesController < ApplicationController
  def index
    @companies = Company.all
    @q = Company.search(params[:q])
    @companies = @q.result
  end

  def search
    @companies = Company.all
    @companies = Company.search(params[:q])
    @companies = Company.search(rate_lt: params[:q][:rate_lt], review_lt: params[:q][:review_lt], borrowing_method_cont_any: params[:q][:borrowing_method_cont_any], return_method_cont_any: params[:q][:return_method_cont_any]).result
  end

  # private
  # def search_params
  #   params.require(:company).permit(rate_lt: params[:q][:rate_lt], review_lt: params[:q][:review_lt])
  # end

end
