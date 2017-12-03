defmodule SecretCrew.Auth.ErrorHandler do
  import Plug.Conn, only: [put_status: 2]
  import Phoenix.Controller, only: [render: 3]

  alias SecretCrewWeb.ErrorView

  def auth_error(conn, {_type, _reason}, _opts) do
    conn
    |> put_status(:unauthorized)
    |> render(ErrorView, "unauthorized.json")
  end
end