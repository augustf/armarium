class CreateCollectionItems < ActiveRecord::Migration[7.0]
  def change
    create_table :collection_items do |t|
      t.text :code
      t.string :location
      t.text :notes

      t.timestamps
    end
  end
end
