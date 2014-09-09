use Mix.Config

# NOTE: To get SSL working, you will need to set:
#
#     ssl: true,
#     keyfile: System.get_env("SOME_APP_SSL_KEY_PATH"),
#     certfile: System.get_env("SOME_APP_SSL_CERT_PATH"),
#
# Where those two env variables point to a file on disk
# for the key and cert

config :phoenix, PresentirWeb.Router,
  port: System.get_env("PORT"),
  ssl: false,
  host: "example.com",
  cookies: true,
  session_key: "_presentir_web_key",
  session_secret: "VI1RX@EP6G=QO+3%OH6D*VVE1^WQY4=CFM1(9B1KK%E2E0JQ8L0I0YVP&&(^Y6$WD!F_SK0T&1%(GP5"

config :logger, :console,
  level: :info,
  metadata: [:request_id]

