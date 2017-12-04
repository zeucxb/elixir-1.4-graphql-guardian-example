defmodule SecretCrewWeb.UserResolver do
  alias SecretCrew.Account

  def all(%{user: user}, _args, _info) do
    {:ok, Account.list_users()}
  end
end