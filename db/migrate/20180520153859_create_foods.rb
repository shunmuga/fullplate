class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.belongs_to :user, index true
      t.string :name
      t.integer :PLU
      t.string :durability
      t.string :diet_protected
      t.integer :weight
      t.string :size
      t.integer :id
      t.timestamps
    end
  end
end
