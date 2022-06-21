defmodule ExmachinaTestWeb.PageController do
  use ExmachinaTestWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
