defmodule ApiPhoenix.MovieView do
  use ApiPhoenix.Web, :view

  def render("index.json", %{movies: movies}) do
    movies
  end
end
