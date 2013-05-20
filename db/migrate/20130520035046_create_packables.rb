class CreatePackables < ActiveRecord::Migration
  def change
    create_table :packables do |t|
      t.string :name
      t.references :packing_list

      t.timestamps
    end
    add_index :packables, :packing_list_id
  end
end
