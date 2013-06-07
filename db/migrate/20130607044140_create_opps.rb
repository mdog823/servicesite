class CreateOpps < ActiveRecord::Migration
  def change
    create_table :opps do |t|
      t.string :title

      t.timestamps
    end
  end
end
