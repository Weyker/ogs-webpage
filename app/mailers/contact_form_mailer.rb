class ContactFormMailer < ApplicationMailer
  default from: 'web@ogs.cl'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_contact_email(content)
    @content = content
    mail(to: 'pato.beckmann@gmail.com',
         subject: 'Contacto desde ogs.cl')
  end
end
