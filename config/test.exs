use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :secret_crew, SecretCrewWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :secret_crew, SecretCrew.Repo,
  adapter: Mongo.Ecto,
  database: "secret_crew_test",
  hostname: "localhost",
  pool_size: 1
