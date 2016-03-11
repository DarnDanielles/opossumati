class AddQuestionOrderToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :question_order, :integer
  end
end
