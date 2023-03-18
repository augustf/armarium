class ChangeBookTypeColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :books, :type, :cover_type
  end
end
