class CreateTaggingsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :taggings do |t|
      t.string :tagging, null: false

      t.timestamps
    end
  end
end
