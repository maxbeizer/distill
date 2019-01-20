defmodule DistillWeb.PageController do
  use DistillWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def health(conn, _params) do
    json(conn, %{msg: "OK"})
  end
end
