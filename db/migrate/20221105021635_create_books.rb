class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.date :year
      t.string :type
      t.string :publisher
      t.string :subject
      t.string :isbn
      t.string :condition

      t.references :collection_item, null: false, foreign_key: true
      t.timestamps
    end
  end
end
