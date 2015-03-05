class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :subject
      t.string :comments
      t.date :due_date
      t.integer :priority
      t.integer :status
      t.references :contact, index: true

      t.timestamps null: false
    end
    add_foreign_key :contacts, :activities
  end
end
