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
    @contact = Contact.find(params[:id])
    @contact.first_name = allowed_params[:first_name]
    @contact.last_name = allowed_params[:last_name]
    @contact.title = allowed_params[:title]
    @contact.email = allowed_params[:email]
    @contact.phone_number = allowed_params[:phone_number]
    @contact.mobile_number = allowed_params[:mobile_number]
    @contact.department = allowed_params[:department]

    @contact.address = allowed_params[:address]
    @contact.postcode = allowed_params[:postcode]
    @contact.city = allowed_params[:city]
    @contact.state = allowed_params[:state]
    @contact.country = allowed_params[:country]

    @contact.save
    redirect_to contacts_path
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.delete
    redirect_to contacts_path
  end

  def allowed_params
    params.require(:contact).permit(:id, :first_name, :last_name, :title, :email, :phone_number, :mobile_number, :department,
                                    :address, :postcode, :city, :state, :country)
  end

end