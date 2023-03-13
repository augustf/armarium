class CreateJoinTableCollectionCollectionItem < ActiveRecord::Migration[7.0]
  def change
    create_join_table :collections, :collection_items do |t|
      # t.index [:collection_id, :collection_item_id]
      # t.index [:collection_item_id, :collection_id]
    end
  end
end
