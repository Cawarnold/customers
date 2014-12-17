class CreateUsersUserHasProducts < ActiveRecord::Migration
  def change
    create_table :users_user_has_products do |t|
      t.belongs_to :user, index: true
      t.belongs_to :user_has_products, index: true
    end
  end
end
