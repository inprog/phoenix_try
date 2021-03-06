# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phoenix_try,
  ecto_repos: [PhoenixTry.Repo]

# Configures the endpoint
config :phoenix_try, PhoenixTryWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ZXHt74QFQUlPO5rorMVh9muCvWZjtKDk4g0mN03DuplRkF2ludAKHdraY/Xt7Jd4",
  render_errors: [view: PhoenixTryWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: PhoenixTry.PubSub,
  live_view: [signing_salt: "UGBhkwrB"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Configures CorsPlug https://github.com/mschae/cors_plug
config :cors_plug,
  origin: ["https://post-api.vercel.app", "http://localhost:3000"]
  # max_age: 86400,
  # methods: ["GET", "POST", "PATCH", "PUT"]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
