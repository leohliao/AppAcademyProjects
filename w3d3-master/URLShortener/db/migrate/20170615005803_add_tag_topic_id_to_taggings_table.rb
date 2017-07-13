class AddTagTopicIdToTaggingsTable < ActiveRecord::Migration[5.0]
  def change
    add_column :taggings, :tag_topic_id, :integer
  end
end
