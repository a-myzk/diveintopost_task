class AssignMailer < ApplicationMailer
  default from: 'from@example.com'

  def assign_mail(email, password)
    @email = email
    @password = password
    mail to: @email, subject: I18n.t('views.messages.charge_of_the_owner')
  end

  def delete_agenda_mail(email)
    @email = email
    mail to: @email, subject: I18n.t('views.messages.delete_of_the_agenda')
  end
end