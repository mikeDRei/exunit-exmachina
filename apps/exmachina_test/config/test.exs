import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :exmachina_test, ExmachinaTest.Repo,
  username: "postgres",
  password: "Caveira_321",
  hostname: "localhost",
  database: "exmachina_test_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :exmachina_test, ExmachinaTestWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "bLWZj45w3lFpqRpX6B2T2DJlOPaWf8m13sKlr/ikbOelHKCsHtyCOM1o1erR59Io",
  server: false

# In test we don't send emails.
config :exmachina_test, ExmachinaTest.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
