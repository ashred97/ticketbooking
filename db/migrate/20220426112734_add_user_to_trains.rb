class AddUserToTrains < ActiveRecord::Migration[7.0]
  def change
    add_reference :trains, :user, null: false, foreign_key: true
  end
end
