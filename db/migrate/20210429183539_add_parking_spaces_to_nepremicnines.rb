class AddParkingSpacesToNepremicnines < ActiveRecord::Migration[6.0]
  def change
    add_column :nepremicnines, :parking_spaces, :integer, default: 0
  end
end
