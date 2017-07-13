class ChangeVisitsTableName < ActiveRecord::Migration[5.0]
  def change
    rename_table :visits_tables, :visits
  end
end
