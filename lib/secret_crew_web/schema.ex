defmodule SecretCrewWeb.Schema do
  use Absinthe.Schema
  import_types SecretCrewWeb.Types.Viewer

  query do
    field :viewer, :viewer do
      resolve fn _, _ ->
        {:ok, %{}}
      end
    end
  end
end
