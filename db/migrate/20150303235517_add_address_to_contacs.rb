class AddAddressToContacs < ActiveRecord::Migration
  def change
    add_column :contacts, :address, :string
    add_column :contacts, :postcode, :string
    add_column :contacts, :city, :string
    add_column :contacts, :state, :string
    add_column :contacts, :country, :string
  end
end
