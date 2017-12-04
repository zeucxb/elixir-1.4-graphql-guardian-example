defmodule SecretCrewWeb.ViewerResolver do
  alias SecretCrew.Auth

  def main(%{token: token}, _info) do
    case Auth.resource_from_token(token) do
      {:ok, user, _claims} ->
        {:ok, %{user: user}}
      {:error, _error} ->
        {:error, "Unauthorized"}
    end
  end
end