class AddPayedToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :payed, :boolean
  end
end
