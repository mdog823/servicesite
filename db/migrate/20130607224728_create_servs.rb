class CreateServs < ActiveRecord::Migration
  def change
    create_table :servs do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
