class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.references :user, index: true
      t.text :title
      t.text :first_name
      t.text :last_name
      t.text :company
      t.text :address1
      t.text :address2
      t.text :zip_post_code

      t.timestamps
    end
  end
end
