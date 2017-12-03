defmodule SecretCrew.Auth do
  use Guardian, otp_app: :secret_crew
  
  alias SecretCrew.Account

  def subject_for_token(resource, _claims) do
    {:ok, to_string(resource.id)}
  end

  def resource_from_claims(claims) do
    user = Account.get_user!(claims["sub"])
    {:ok, user}
  end
end