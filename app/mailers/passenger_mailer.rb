class PassengerMailer < ApplicationMailer
  def thank_you_email
    params[:users].each do |user|
      @user = user
      @url = 'http://example.com/login'
      mail(to: @user.email, subject: 'Thank you')
    end
  end
end
