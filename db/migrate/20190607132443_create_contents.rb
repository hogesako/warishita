class CreateContents < ActiveRecord::Migration[5.2]
  def change
    create_table :contents do |t|
      t.string :title
      t.string :body
      t.integer :category_id

      t.timestamps
    end
  end
end
