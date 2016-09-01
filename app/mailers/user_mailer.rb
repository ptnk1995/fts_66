class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.notify_user_new_subject.subject
  #
  def notify_user_new_subject user, subject
    @user = user
    @subject = subject
    mail to: @user.email, subject: t(".subject", subject: subject.name)
  end
end
