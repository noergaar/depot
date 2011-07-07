class Notifier < ActionMailer::Base
  default :from => "Bjarne Norgaard <bjarne.norgaard@nokia.com>"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.order_received.subject
  #
  

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.order_shipped.subject
  #
  def order_shipped(order)
    @order = order

    mail :to => order.email, :subject => 'Bjarnes Books Order Shipped'
    
  end

  def order_received(order)
    @order = order
    
    mail :to => order.email, :subject => 'Bjarnes Books Order Confirmation'
  end
end
