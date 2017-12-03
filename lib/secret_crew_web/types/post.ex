defmodule SecretCrewWeb.Types.Post do
  use Absinthe.Schema.Notation
  use Absinthe.Ecto, repo: SecretCrew.Repo

  object :post do
    field :id, :id
    field :body, :string
    field :user, :user, resolve: assoc(:users)
  end
end