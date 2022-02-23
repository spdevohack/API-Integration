class AlterColumns < ActiveRecord::Migration[7.0]
  def change
    remove_reference :contacts, :user

  end
end
