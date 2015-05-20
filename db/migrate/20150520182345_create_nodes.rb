class CreateNodes < ActiveRecord::Migration
  def change
    create_table :nodes do |t|
      t.integer :rating
      t.integer :depth
      t.integer :root_node
      t.integer :parent_id
      t.string :data
      t.string :datatype

      t.timestamps
    end
  end
end
