class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.integer :author_id
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
