MailbuilderPreview::Engine.routes.draw do
  
  match "/email" => "mail_preview#index"
  match "/email/:email_id" => "mail_preview#show"
  match "/email/:email_id/:rest" => "mail_preview#image", :constraints => { :rest => /.*/ }
  
end

if Rails.env == "development"

  Rails.application.routes.draw do
    mount MailbuilderPreview::Engine => "/mail_preview"
  end

end