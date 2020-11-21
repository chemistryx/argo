class ChangePostIdToActivityId < ActiveRecord::Migration[5.2]
  def change
    rename_column :comments, :post_id, :activity_id
  end
end
