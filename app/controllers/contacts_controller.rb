class ContactsController < ApplicationController
  #require 'utils'

  # def process_form
  #   Utils.myLog " Params are #{params}"
  #   flash[:notice] = "Received request from: #{params[:contact][:name]}"
  #   redirect_to root_path
  # end
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(secure_params)
    if @contact.valid?
      #@contact.update_spreadsheet paja....
      #UserMailer.contact_email(@contact).deliver
      flash[:notice] = "Message sent from #{@contact.name}."
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def secure_params
    params.require(:contact).permit(:name, :email, :content)
  end

end


