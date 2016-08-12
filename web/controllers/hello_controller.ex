defmodule FirstProject.HelloController do
  use FirstProject.Web, :controller
  def show(conn, %{"name" => name}) do
    render conn, "world.html", name: name
  end
end
