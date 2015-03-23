use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :polymix, Polymix.Endpoint,
  secret_key_base: "EgO99i26pMXotWd98nU3tIeZkcG/hlvgR61DY52DqbAhQhqLV7umCiweYvkeWHHP"

# Configure your database
config :polymix, Polymix.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "polymix_prod"
