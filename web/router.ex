defmodule PresentirWeb.Router do
  use Phoenix.Router
  use Phoenix.Router.Socket, mount: "/ws"

  get "/", PresentirWeb.PageController, :index, as: :pages

  channel "channel", PresentirWeb.SlideChannel
end
