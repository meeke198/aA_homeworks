class UserMailer < ApplicationMailer
  default from: 'from@example.com'
   def welcome_email(user)
    @user = user
    mail(to: @user.eamil, subject: "Welcome to Whatever Site you are")
  end
end

