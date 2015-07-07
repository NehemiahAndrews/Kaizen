class AlterOpportunitiesAddUserIdColumn < ActiveRecord::Migration
  def change
    add_column :opportunities, :user_id, :integer
    add_index :opportunities, :user_id
  end
end
