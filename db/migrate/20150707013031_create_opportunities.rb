class CreateOpportunities < ActiveRecord::Migration
  def change
    create_table :opportunities do |t|

      t.string :opportunity
      t.string :exploit
      t.string :priority

      t.timestamps
    end
  end
end
