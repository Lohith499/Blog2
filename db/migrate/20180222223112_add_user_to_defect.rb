class AddUserToDefect < ActiveRecord::Migration[5.1]
  def change
    add_reference :defects, :user, foreign_key: true
  end
end
