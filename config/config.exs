# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :auth_app,
  ecto_repos: [AuthApp.Repo]

# Configures the endpoint
config :auth_app, AuthAppWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "94YieVslJsMUmHmCAex3cBCxLNkuy+3Um+9Sd+zKg/Vs3O4rWC+sW4jB/PxxZyKh",
  render_errors: [view: AuthAppWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: AuthApp.PubSub,
  live_view: [signing_salt: "H+Dbfkh1"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

config :auth_app, :pow,
  user: AuthApp.Users.User,
  repo: AuthApp.Repo,
  web_module: AuthAppWeb
