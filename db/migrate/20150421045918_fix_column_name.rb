class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :votes, :userid, :user_id
  end
end
