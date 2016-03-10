class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :survey_id
      t.string :question_type
      t.text :description
      t.boolean :required

      t.timestamps null: false
    end
  end
end
