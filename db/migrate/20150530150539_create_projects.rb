class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :project_name
      t.integer :user_id
      t.text :description
      t.text :customer_pain
      t.string :status
      t.integer :manager_id

      t.timestamps

    end
  end
end
