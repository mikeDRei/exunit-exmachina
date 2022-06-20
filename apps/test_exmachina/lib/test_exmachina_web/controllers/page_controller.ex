defmodule TestExmachinaWeb.PageController do
  use TestExmachinaWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
