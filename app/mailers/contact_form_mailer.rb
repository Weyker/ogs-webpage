class ContactFormMailer < ApplicationMailer
  default from: 'web@ogs.cl'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_contact_email(content)
    @content = content
    mail(to: 'ogs@ogs.cl',
         subject: 'Contacto desde ogs.cl')
  end
end
