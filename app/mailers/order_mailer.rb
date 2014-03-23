class OrderMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.completed_order.subject
  #
  def completed_order(email)
    mail to: email, subject: "Order Confirmation"
end
