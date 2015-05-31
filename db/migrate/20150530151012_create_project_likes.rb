class CreateProjectLikes < ActiveRecord::Migration
  def change
    create_table :project_likes do |t|
      t.string :project_id
      t.integer :user_id

      t.timestamps

    end
  end
end
