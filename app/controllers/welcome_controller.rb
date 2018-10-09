class WelcomeController < ApplicationController
  def index; end

  def comming_soon; end

  def contact
    ContactFormMailer.send_contact_email(contact_params).deliver
    render json: { message: 'Mensaje recibido, nos contactaremos a la brevedad' }, status: :ok
  end

  private

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email, :message)
  end
end
