class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :project_id
      t.text :comment
      t.integer :user_id

      t.timestamps

    end
  end
end
