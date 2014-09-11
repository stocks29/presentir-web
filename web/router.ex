defmodule PresentirWeb.Router do
  use Phoenix.Router
  use Phoenix.Router.Socket, mount: "/ws"

  get "/", PresentirWeb.PageController, :index, as: :index
  get "/presentation/:server", PresentirWeb.PageController, :presentation, as: :presentation

  channel "channel", PresentirWeb.SlideChannel
end
