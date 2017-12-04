defmodule SecretCrewWeb.Schema do
  use Absinthe.Schema
  import_types SecretCrewWeb.Types.Viewer

  query do
    field :viewer, :viewer do
      arg :token, non_null(:string)

      resolve &SecretCrewWeb.ViewerResolver.main/2
    end
  end
end
