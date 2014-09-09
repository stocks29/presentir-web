defmodule PresentirWeb.Web.Client do
  use Phoenix.Channel

  defstruct socket: nil

  def new(socket) do
    %PresentirWeb.Web.Client{socket: socket}
  end

  defimpl Presentir.Client, for: PresentirWeb.Web.Client do
    def send_message(client, message) do
      reply client.socket, "new_slide", %{content: message}
      :ok
    end

    def send_slide(client, slide) do
      rendered = Presentir.Render.as_html(slide)
      # rendered = "slide-content"
      # IO.puts rendered
      reply client.socket, "new_slide", %{content: rendered}
      :ok
    end

    def disconnect(client) do
      terminate(client.socket)
    end
  end
end