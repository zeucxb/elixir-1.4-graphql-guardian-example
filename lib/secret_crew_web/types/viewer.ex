defmodule SecretCrewWeb.Types.Viewer do
  use Absinthe.Schema.Notation
  # use Absinthe.Ecto, repo: SecretCrew.Repo
  import_types SecretCrewWeb.Types.User
  # import_types SecretCrewWeb.Types.Post

  object :viewer do
    field :users, list_of(:user), resolve: &SecretCrewWeb.UserResolver.all/3
    # field :posts, list_of(:post), resolve: &SecretCrew.Feed.PostResolver.all/2
  end
end
