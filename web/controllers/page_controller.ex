defmodule PresentirWeb.PageController do
  use Phoenix.Controller

  def index(conn, _params) do
    render conn, "index"
  end

  def presentation(conn, params) do
    render conn, "presentation", server: params["server"]
  end

  def not_found(conn, _params) do
    render conn, "not_found"
  end

  def error(conn, _params) do
    render conn, "error"
  end
end
