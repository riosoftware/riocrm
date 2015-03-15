class ContactsController < ApplicationController

  def new
    @contact = Contact.new
    @contact.country = 'Australia'
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def show
    @contact = Contact.find(params[:id])
    @activities = @contact.activities
  end

  def create
    @contact = Contact.new(allowed_params)
    @contact.save
    redirect_to contacts_path
  end

  def index
    @contacts = Contact.all
  end

  def update
    Contact.update_contact_with(allowed_params)
    redirect_to contacts_path
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.delete
    redirect_to contacts_path
  end

  private
  def allowed_params
    params.require(:contact).permit(:first_name, :last_name, :title, :email, :phone_number, :mobile_number, :department,
                                    :address, :postcode, :city, :state, :country, :id)
  end

end