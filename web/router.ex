defmodule ApiPhoenix.Router do
  use ApiPhoenix.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ApiPhoenix do
    pipe_through :api

    get "/movies", MovieController, :index
  end
end
