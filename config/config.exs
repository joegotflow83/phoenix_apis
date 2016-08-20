# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :api_phoenix,
  ecto_repos: [ApiPhoenix.Repo]

# Configures the endpoint
config :api_phoenix, ApiPhoenix.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "W74b/s0Um8GH6bQGd2kEqsekPEjcFeC/v22PnvAyijYaRos+aMUQ4c/0UnNvIsTm",
  render_errors: [view: ApiPhoenix.ErrorView, accepts: ~w(json)],
  pubsub: [name: ApiPhoenix.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
