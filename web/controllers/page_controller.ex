defmodule Polymix.PageController do
  use Polymix.Web, :controller

  plug :action

  def index(conn, _params) do
    render conn, "index.html"
  end
end
