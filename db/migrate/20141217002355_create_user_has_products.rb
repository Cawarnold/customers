class CreateUserHasProducts < ActiveRecord::Migration
  def change
    create_table :user_has_products do |t|
      t.text :platform
      t.text :service
      t.integer :tier

      t.timestamps
    end
  end
end
