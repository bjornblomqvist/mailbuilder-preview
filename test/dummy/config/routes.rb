Rails.application.routes.draw do

  mount MailbuilderPreview::Engine => "/mailbuilder-preview"
end
