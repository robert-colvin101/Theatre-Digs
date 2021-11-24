class PagesController < ApplicationController
  def home

    if params[:query].present?
      @properties = Property.where("city ILIKE ?", "%#{params[:query]}%")
    else
      @properties = Property.all
    end
  end
end
