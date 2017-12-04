defmodule SecretCrewWeb.ViewerResolver do
  alias SecretCrew.Auth

  def main(%{token: token}, _info) do
    case Auth.decode_and_verify(token) do
      {:ok, %{"sub" => user_id}} ->
        {:ok, %{user_id: user_id}}
      {:error, _claims} ->
        {:error, "Unauthorized"}
    end
  end
end