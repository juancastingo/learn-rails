class VisitorsController < ApplicationController
require 'utils'
  def new
    @owner = Owner.new
    Utils.myLog("asd")
    flash.now[:notice] = 'bienvenido'
    flash.now[:alert] = 'Alerta: My birthday is soon.'

  end
  
end