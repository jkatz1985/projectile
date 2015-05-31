class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.integer :user_id
      t.integer :project_id
      t.text :resource_question

      t.timestamps

    end
  end
end
