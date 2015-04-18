defmodule Polymix.PageController do
  use Polymix.Web, :controller

  plug :action

  def index(conn, _params) do
    case Application.get_env(:polymix, :Polymix.Endpoint)[:env] do
      :prod ->
        render conn, "build_index.html"
      _ ->
        render conn, "index.html"
    end
  end
end
