Gem::Specification.new do |s|
  s.name     = 'mail_opener'
  s.version  = '0.1.0'
  s.summary  = 'Intercept outgoing mail and open in Mac OS X Mail app'
  s.author   = 'Benjamin Ragheb'
  s.email    = 'ben@benzado.com'
  s.homepage = 'http://github.com/benzado/mail_opener'
  s.license  = 'MIT'
  s.description = %q{
    Mail Opener is dirt simple: it writes each email to a file and then opens
    that file in the Mac OS X Mail application. This is nice because you can
    preview the email directly in an email reader, instead of a web browser.
  }
  s.files = %w[
    README.md
    LICENSE.txt
    lib/mail_opener.rb
    lib/mail_opener/railtie.rb
  ]
  s.add_dependency 'mail'
end
