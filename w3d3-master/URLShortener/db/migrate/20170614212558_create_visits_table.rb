class CreateVisitsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :visits_tables do |t|
      t.integer :user_id, null: false
      t.integer :url_id, null: false

      t.timestamps
    end

    add_index :visits_tables, :url_id
  end
end
