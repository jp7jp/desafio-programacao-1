class ImporterController < ApplicationController

  skip_before_action :verify_authenticity_token

  def index    
  end

  def upload
    unless params[:file].nil?
      @response = Sale.import(params[:file])      
    end    

    render action: "index"    
  end
end 
