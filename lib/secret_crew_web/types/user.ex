defmodule SecretCrewWeb.Types.User do
  use Absinthe.Schema.Notation
  use Absinthe.Ecto, repo: SecretCrew.Repo

  object :user do
    field :id, :id
    field :name, :string
    # field :posts, list_of(:post), resolve: assoc(:posts)
  end
end