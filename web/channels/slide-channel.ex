defmodule PresentirWeb.SlideChannel do
  use Phoenix.Channel

  def join(socket, "topic", params) do
    server = params["server"]
    IO.puts "websocket client joining #{server}"
    Presentir.SlideServer.add_client(
      {:global, server}, PresentirWeb.Web.Client.new(socket))
    {:ok, socket}
  end

  def join(socket, _no, _message) do
    {:error, socket, :unauthorized}
  end

end