defmodule Polymix.Endpoint do
  use Phoenix.Endpoint, otp_app: :polymix

  # Serve at "/" the given assets from "priv/static" directory
  plug Plug.Static,
    at: "/", from: :polymix,
    only: ~w(css images js favicon.ico robots.txt bower_components)

  # Code reloading can be explicitly enabled under the
  # :code_reloader configuration of your endpoint.
  if code_reloading? do
    plug Phoenix.CodeReloader
  end

  plug Plug.Logger

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json],
    pass: ["*/*"],
    json_decoder: Poison

  plug Plug.MethodOverride
  plug Plug.Head

  plug Plug.Session,
    store: :cookie,
    key: "_polymix_key",
    signing_salt: "v+daWaLq",
    encryption_salt: "xCwgrPjU"

  plug :router, Polymix.Router
end
