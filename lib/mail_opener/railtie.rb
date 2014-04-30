require 'mail_opener/delivery_method'

module MailOpener
  class Railtie < Rails::Railtie
    initializer 'mail_opener.add_delivery_method' do |app|
      ActionMailer::Base.add_delivery_method :mail_opener, MailOpener::DeliveryMethod
    end
  end
end
