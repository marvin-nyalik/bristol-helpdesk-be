class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :json

  private

  def respond_with(resource, _opts = {})
    if resource.persisted?
      render json: { message: 'Signed up successfully.', user: resource }, status: :created
    else
      puts resource.errors.full_messages
      render json: { errors: resource.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def sign_up_params
    params.require(:user).permit(
      :email,
      :password,
      :password_confirmation,
      :username,
      :fullname,
      :status,
      :usertype,
      branches: []
      
    )
  end

  def sign_up(resource_name, resource)
    # No redirect since API only
  end
end
