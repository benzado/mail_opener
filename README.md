# Mail Opener opens your mail

Mail Opener is similar to [many][1] [other][2] [gems][3] designed to allow you
to view mail sent from your web app in development mode without using a real
mail server or accidentally test messages to real people.

[1]: http://github.com/ryanb/letter_opener
[2]: http://mailcatcher.me
[3]: https://github.com/basecamp/mail_view

Mail Opener is dirt simple: it writes each email to a file and then opens that
file in the Mac OS X Mail application. This is nice because you can preview the
email directly in an email reader, instead of a web browser.

There are some shortcomings:

1. If you send a thousand messages, a thousand message windows will open. You
   might not want that.
2. If you don't have a Mac, this gem will probably not work. If you know how to
   make it useful on another platform, pull requests are welcome.

## Rails Setup

Add the gem to your `Gemfile`

    group :development do
      ...
      gem 'mail_opener'
      ...
    end

and then set the delivery method in `config/environments/development.rb`

    config.action_mailer.delivery_method = :mail_opener

and you're good to go.
