class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def price_alert
    @user = params[:user]
    @price_alert = params[:price_alert]
    @url  = @price_alert.url
    mail(to: @user.email, subject: 'Price Alert Notification')
  end
end
