class CreateInformeds < ActiveRecord::Migration
  def change
    create_table :informeds do |t|
      t.integer :user_id
      t.integer :project_id

      t.timestamps

    end
  end
end
