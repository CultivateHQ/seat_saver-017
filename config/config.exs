# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :seat_saver,
  ecto_repos: [SeatSaver.Repo]

# Configures the endpoint
config :seat_saver, SeatSaver.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "F+0r2KDrtiGPylVMa41SK4canvbYN5ustP/AKFqA5lEF4QYz1G2IL8k9V8n2r3t6",
  render_errors: [view: SeatSaver.ErrorView, accepts: ~w(html json)],
  pubsub: [name: SeatSaver.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
