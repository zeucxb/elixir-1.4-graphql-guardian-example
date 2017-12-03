defmodule SecretCrew.Auth.Pipeline do
  use Guardian.Plug.Pipeline,
    otp_app: :secret_crew,
    module: SecretCrew.Auth,
    error_handler: SecretCrew.Auth.ErrorHandler
  
  plug Guardian.Plug.VerifyHeader, key: :user
  plug Guardian.Plug.LoadResource, key: :user, allow_blank: true
end