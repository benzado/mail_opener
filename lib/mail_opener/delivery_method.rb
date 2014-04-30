require 'mail/check_delivery_params'

module MailOpener
  class DeliveryMethod
    include ::Mail::CheckDeliveryParams

    def initialize(options = {})
      Rails.logger.warn "MailOpener is intended for development use only" unless Rails.env.development?
      @eml_dir = Pathname.new(Rails.root) + 'tmp/mail_opener'
    end

    def deliver!(mail)
      check_delivery_params(mail)
      @eml_dir.mkpath
      filename = @eml_dir + sprintf('%08x.eml', rand(2**32))
      filename.open('w') do |f|
        f.write mail.encoded.to_lf
      end
      Rails.logger.info "MailOpener: saved message to #{filename}"
      system "open -a Mail #{filename}" or raise "Failed to open email; are you on Mac OS X?"
    end

  end
end
