class AboutPageController < ApplicationController
    
    before_action :check_message, only: :about_json
    
    def pagedef
    end

    def about_form
    end

    def about_page
       if params[:email].present? and params[:name].present?
           @name =params[:name]
           @email =params[:email]
        else
          redirect_to root_path
        end
    end
    
    def about_json
        respond_to do |format|
            format.html { redirect_to root_path}
            format.json { render json: {message: params[:message]}, status: :ok}
            format.all { render plain: "Invalid Request Format", status: :bad_request}
        end
    end
        

    private 

    def check_message
        unless params[:message].present?
           # render plain: "bad request", status :bad_request
           head :bad_request
        end
    end
end
