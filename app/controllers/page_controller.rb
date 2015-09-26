class PageController < ApplicationController
  def home
    @stations = Station.all.includes(:prices).where("name ILIKE ?", "%#{params[:q]}%").page(params[:page])
  end
end
