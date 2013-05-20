class CreatePackingLists < ActiveRecord::Migration
  def change
    create_table :packing_lists do |t|
      t.string :name

      t.integer :context_id

      t.timestamps
    end
  end
end
