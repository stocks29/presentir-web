use Mix.Config

config :phoenix, PresentirWeb.Router,
  port: System.get_env("PORT") || 4000,
  ssl: false,
  host: "localhost",
  cookies: true,
  session_key: "_presentir_web_key",
  session_secret: "VI1RX@EP6G=QO+3%OH6D*VVE1^WQY4=CFM1(9B1KK%E2E0JQ8L0I0YVP&&(^Y6$WD!F_SK0T&1%(GP5",
  debug_errors: true

config :phoenix, :code_reloader,
  enabled: true

config :logger, :console,
  level: :debug


