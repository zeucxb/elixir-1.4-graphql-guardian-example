defmodule SecretCrew.Account.UserResolver do
  alias SecretCrew.Account

  def all(_args, _info) do
    {:ok, Account.list_users()}
  end
end