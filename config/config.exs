# This file is responsible for configuring your application
use Mix.Config

# Note this file is loaded before any dependency and is restricted
# to this project. If another project depends on this project, this
# file won't be loaded nor affect the parent project.

config :phoenix, PresentirWeb.Router,
  port: System.get_env("PORT"),
  ssl: false,
  static_assets: true,
  cookies: true,
  session_key: "_presentir_web_key",
  session_secret: "VI1RX@EP6G=QO+3%OH6D*VVE1^WQY4=CFM1(9B1KK%E2E0JQ8L0I0YVP&&(^Y6$WD!F_SK0T&1%(GP5",
  catch_errors: true,
  debug_errors: false,
  error_controller: PresentirWeb.PageController

config :phoenix, :code_reloader,
  enabled: false

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. Note, this must remain at the bottom of
# this file to properly merge your previous config entries.
import_config "#{Mix.env}.exs"
