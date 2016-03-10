class CreateTakers < ActiveRecord::Migration
  def change
    create_table :takers do |t|
      t.integer :survey_id
      t.string :email

      t.timestamps null: false
    end
  end
end
