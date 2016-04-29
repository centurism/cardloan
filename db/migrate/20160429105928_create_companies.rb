class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|

      t.string :service_name
      t.string :rate
      t.string :max_credit_limit
      t.string :review_time
      t.string :trial_review

      service_name  rate  max_credit_limit  review_time min_loan_time trial_review

      t.timestamps null: false
    end
  end
end
