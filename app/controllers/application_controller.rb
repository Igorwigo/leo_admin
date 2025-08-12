class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!

  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :phone_number, :cpf, :birthdate, :role, :status])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :phone_number, :cpf, :birthdate, :role, :status])
  end

  #!sobrescrita dos métodos do devise
  #Depois de fazer o log_in, Redirecionar para a tela de dashboard
  #
  def after_sign_in_path_for(resource)
    dashboard_path  # ou home_dashboard_path, dependendo da sua rota
  end
  #Depois de fazer o log_out, Redirecionar para a tela de login ao inves da landing page

  def after_sign_out_path_for(resource_or_scope)
    new_user_session_path
  end
  #fim da sobrescrita do devise
end
