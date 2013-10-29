MailbuilderPreview::Engine.routes.draw do
  
  get "/" => "mail_preview#index"
  
  get "/email" => "mail_preview#index"
  get "/email/:email_id" => "mail_preview#show"
  get "/email/:email_id/:rest" => "mail_preview#image", :constraints => { :rest => /.*/ }
  
end

if Rails.env == "development"

  Rails.application.routes.draw do
    mount MailbuilderPreview::Engine => "/mail_preview"
  end
  
end