# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :secret_crew,
  ecto_repos: [SecretCrew.Repo],
  generators: [binary_id: true]

# Configures the endpoint
config :secret_crew, SecretCrewWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "u4VQFsBQPJzEvlZ2b7hmLiClCFDzP1jMyWkyqWQ3VEeA9qenWPubrrPULp5FNkmD",
  render_errors: [view: SecretCrewWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: SecretCrew.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Configurações dos geradores Phoenix
config :secret_crew, :generators,
  binary_id: true

# Configurações do Guardian
config :secret_crew, SecretCrew.Auth,
  issuer: "s3Cr3t_CreW",
  secret_key: "Fidv/mjydodflvVUW2xo5z3y9CtEr+D2oQOapSKILm+aw88Jr/PhuRymoZyfWfqm"

# Guardian pipeline
config :secret_crew, SecretCrew.Auth.Pipeline,
  module: SecretCrew.Auth,
  error_handler: SecretCrew.Auth.ErrorHandler

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
