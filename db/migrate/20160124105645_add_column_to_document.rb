class AddColumnToDocument < ActiveRecord::Migration
  def change
    add_column :documents, :name, :string
  end
end
