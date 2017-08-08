# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :channel_sample, ChannelSampleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "aVe3r51T8WD+BlhlOPCE7a3dTX//DkxiQvKcZGY73HWXiFQdebqShKnsqbRUqll2",
  render_errors: [view: ChannelSampleWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ChannelSample.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
