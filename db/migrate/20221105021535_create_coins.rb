class CreateCoins < ActiveRecord::Migration[7.0]
  def change
    create_table :coins do |t|
      t.string :year
      t.string :mintmark
      t.integer :mintage
      t.string :condition
      t.string :certification
      t.string :certification_number
      t.string :distribution
      t.text :defects
      t.references :coin_type, null: false, foreign_key: true
      t.references :collection_item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
