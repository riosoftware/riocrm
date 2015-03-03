class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :title
      t.string :email
      t.string :phone_number
      t.string :mobile_number
      t.string :department

      t.timestamps null: false
    end
  end
end
