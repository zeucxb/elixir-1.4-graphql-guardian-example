defmodule SecretCrewWeb.Router do
  use SecretCrewWeb, :router
  
  forward "/graph", Absinthe.Plug,
    schema: SecretCrewWeb.Schema

  forward "/graphiql", Absinthe.Plug.GraphiQL,
    schema: SecretCrewWeb.Schema
end
