class VisitorsController < ApplicationController
require 'utils'
  def new
    @owner = Owner.new
    Utils.myLog "A"
    flash[:notice] ||= 'bienvenido'
    flash.now[:alert] = 'Alerta: My birthday is soon.'

  end
  
end