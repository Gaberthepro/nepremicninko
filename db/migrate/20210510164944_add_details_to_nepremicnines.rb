class AddDetailsToNepremicnines < ActiveRecord::Migration[6.0]
  def change
    add_column :nepremicnines, :details, :text
  end
end
