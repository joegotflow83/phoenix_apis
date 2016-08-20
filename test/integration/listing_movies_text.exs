defmodule ListingMoviesIntegrationTest do
  use ExUnit.Case, async: true
  use Plug.Test
  alias ApiPhoenix.Router

  @opts Router.init([])
  test 'listing movies' do
    conn = conn(:get, "/api/movies")
    response = Router.call(conn, @opts)
    assert response.status == 200
  end
end
