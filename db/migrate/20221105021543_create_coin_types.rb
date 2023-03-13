class CreateCoinTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :coin_types do |t|
      t.string :name
      t.string :denomination
      t.string :style
      t.string :composition
      t.date :first_issued
      t.date :last_issued

      t.timestamps
    end
  end
end
