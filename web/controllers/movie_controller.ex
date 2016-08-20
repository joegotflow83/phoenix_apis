defmodule ApiPhoenix.MovieController do
  use ApiPhoenix.Web, :controller

  def index(conn, _params) do
    render conn, movies: []
  end
end
