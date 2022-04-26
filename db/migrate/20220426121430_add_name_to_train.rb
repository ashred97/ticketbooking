class AddNameToTrain < ActiveRecord::Migration[7.0]
  def change
    add_column :trains, :name, :string
    add_column :trains, :address, :string
    add_column :trains, :birthday, :string
    add_column :trains, :email, :string
  end
end
