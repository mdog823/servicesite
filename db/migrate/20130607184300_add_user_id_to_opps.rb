class AddUserIdToOpps < ActiveRecord::Migration
  def change
    add_column :opps, :user_id, :integer
    add_index :opps, :user_id
  end
end
