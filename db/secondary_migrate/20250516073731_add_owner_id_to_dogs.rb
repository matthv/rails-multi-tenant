class AddOwnerIdToDogs < ActiveRecord::Migration[7.2]
  def change
    add_column :dogs, :owner_id, :integer
  end
end
