class ChangeColumnNameQuestionsTable < ActiveRecord::Migration
  def change
    rename_column :questions, :questions, :body
  end
end
