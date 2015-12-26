defmodule SamplePhoenix.PageController do
  use SamplePhoenix.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
