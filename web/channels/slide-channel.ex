defmodule PresentirWeb.SlideChannel do
  use Phoenix.Channel

  def join(socket, "topic", params) do
    server = params["server"]
    IO.puts "joining server #{server}"
    Presentir.SlideServer.add_client(
      {:global, server}, PresentirWeb.Web.Client.new(socket))
    
    # spawn fn -> send_slide(socket, "new_slide", inspect message) end
    {:ok, socket}
  end

  def join(socket, _no, _message) do
    {:error, socket, :unauthorized}
  end

  defp send_slide(socket, topic, message), do: send_slide(socket, topic, message, 0)

  defp send_slide(socket, topic, message, count) do
    :timer.sleep(2000)
    reply socket, topic, %{content: "#{message} Slide #{count}"}
    send_slide(socket, topic, message, count + 1)
  end
end