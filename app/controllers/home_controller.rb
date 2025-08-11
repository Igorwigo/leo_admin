class HomeController < ApplicationController
  layout false, only: [:landing_page] # não usa nenhum layout padrão

  def dashboard
  end

  def landing_page
  end
end
