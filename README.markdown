# MailbuilderPreview

I nice Rails Engine that lets you preview your emails. It really helpful when styling the emails. The engine is only active in development.

## Setup

You need to add en extra file for the preview to work. 

```
  # $RAILS_ROOT/app/emails/test/locals.rb
  {
    :url => "#this-is-a-dummy!"
  }

```


You can find your email previews at http://127.0.0.1:3000/mail_preview/email/

![Listing](https://raw.github.com/bjornblomqvist/mailbuilder-preview/master/docs/list.png)

![Preview](https://raw.github.com/bjornblomqvist/mailbuilder-preview/master/docs/preview.png)
