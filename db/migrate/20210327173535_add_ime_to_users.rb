class AddImeToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :ime, :string
    add_column :users, :priimek, :string
  end
end
