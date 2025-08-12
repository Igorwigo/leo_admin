class HomeController < ApplicationController
  layout false, only: [:landing_page] # não usa nenhum layout padrão
  # pulando autenticação só para a landing_page
  skip_before_action :authenticate_user!, only: [:landing_page]
  def dashboard
  end

  def landing_page
  end
end
