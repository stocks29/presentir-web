defmodule PresentirWeb.PageController do
  use Phoenix.Controller

  def index(conn, params) do
    IO.puts "#{inspect params}"
    render conn, "index", server: params["server"]
  end

  def not_found(conn, _params) do
    render conn, "not_found"
  end

  def error(conn, _params) do
    render conn, "error"
  end
end
