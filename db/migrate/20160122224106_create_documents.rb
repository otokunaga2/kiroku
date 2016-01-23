class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :url
      t.text :body
      t.belongs_to :user
      t.timestamps null: false
    end
  end
end
