class Contact < ActiveRecord::Base
  has_many :activities

  def self.update_contact_with(attributes = {})
    return nil if attributes.blank? || !attributes[:id].present?

    contact = Contact.find(attributes[:id])
    contact.first_name = attributes[:first_name]
    contact.last_name = attributes[:last_name]
    contact.title = attributes[:title]
    contact.email = attributes[:email]
    contact.phone_number = attributes[:phone_number]
    contact.mobile_number = attributes[:mobile_number]
    contact.department = attributes[:department]

    contact.address = attributes[:address]
    contact.postcode = attributes[:postcode]
    contact.city = attributes[:city]
    contact.state = attributes[:state]
    contact.country = attributes[:country]

    return contact.save
  end

end
