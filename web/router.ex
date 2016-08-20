defmodule ApiPhoenix.Router do
  use ApiPhoenix.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ApiPhoenix do
    pipe_through :api
  end
end
