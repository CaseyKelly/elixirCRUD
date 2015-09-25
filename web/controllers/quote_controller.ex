defmodule Splurty.QuoteController do
  use Phoenix.Controller

  plug :action

  def homepage(conn, _params) do
    render conn, "homepage.html"
  end

  def index(conn, _params) do
    render conn, "index.html"
  end
end
