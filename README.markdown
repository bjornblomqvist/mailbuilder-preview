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

### Listing
![Listing](https://raw.github.com/bjornblomqvist/mailbuilder-preview/master/docs/list.png)


### Preview
![Preview](https://raw.github.com/bjornblomqvist/mailbuilder-preview/master/docs/preview.png)


## Contributing to mailbuilder
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it
* Fork the project
* Start a feature/bugfix branch
* Commit and push until you are happy with your contribution
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Copyright

Copyright (c) 2012 Darwin. See LICENSE.txt for
further details.
