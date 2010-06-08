class UserMailer < ActionMailer::Base
  def forgot_password(user, newPassword)
    recipients user.email
    from       "test@quiniela.com"
    subject    "Your password has been reset"
    body       :user => user, :newPassword => newPassword
    
  end

end
