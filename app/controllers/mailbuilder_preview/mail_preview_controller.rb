module MailbuilderPreview
  class MailPreviewController < ApplicationController
    
      before_filter :check_access

      def index

        @email_names = Dir.entries("./app/emails/").delete_if {|v| v == ".." || v == '.' }.sort
        render :layout => nil

      end

      def show

        if params[:text]
          render :text => "<pre>"+get_demo_text(MailBuilder.new(params[:email_id].to_sym))+"</pre>"
        elsif params[:email]
          builder = MailBuilder.new(params[:email_id].to_sym)
          path = builder.instance_variable_get("@path")
          
          source = if File.exist?("#{path}/locals.rb")
            File.read("#{path}/locals.rb")
          else
            "{}"
          end
          
          send_data builder.build(eval(source)).to_s, :type => "message/rfc822", :disposition => 'inline', :filename => "#{params[:email_id]}-preview.eml"
        else
          render :text => get_demo_html(MailBuilder.new(params[:email_id].to_sym))
        end

      end

      def image

        path = "./app/emails/#{params[:email_id]}/#{params[:rest]}"
        if path.match(/(png|jpg|gif|jpeg)$/) && File.exist?(path)
          send_file path, :type => (MIME::Types.type_for(path) || []).first.to_s, :disposition => 'inline'
        else
          render :text => "No such image", :status => '404 No such image'
        end

      end

      private

      def check_access
        raise "Not allow anywhere but in development" unless Rails.env == 'development'
      end
      
      def get_demo_html(mail)
        @path = mail.instance_variable_get("@path")
        @basename = mail.instance_variable_get("@basename")
        
        Dir.chdir @path do
          source = if File.exist?("locals.rb")
            File.read("locals.rb")
          else
            "{}"
          end
          
          return mail.read_file_or_template("#{@basename}.html", eval(source))
        end
      end

      def get_demo_text(mail)
        @path = mail.instance_variable_get("@path")
        @basename = mail.instance_variable_get("@basename")
        
        Dir.chdir @path do
          source = if File.exist?("locals.rb")
            File.read("locals.rb")
          else
            "{}"
          end
          
          return mail.read_file_or_template("#{@basename}.txt", eval(source))
        end
      end
  end
end
