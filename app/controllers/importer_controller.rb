class ImporterController < ApplicationController

  def index    
  end

  def upload
    unless params[:file].nil?
      @revenue = Sale.import(params[:file])      
    end    

    render action: "index"    
  end
end
