class CreateControllers < ActiveRecord::Migration[5.2]
  def change
    create_table :controllers do |t|
      t.string :User
      t.string :name
      t.string :email
      t.string :address
      t.integer :zip

      t.timestamps
    end
  end
end
