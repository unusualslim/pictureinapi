class AddResolutionToBoards < ActiveRecord::Migration[5.2]
  def change
    add_column :boards, :resolution, :string
  end
end
