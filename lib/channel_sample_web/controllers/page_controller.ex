defmodule ChannelSampleWeb.PageController do
  use ChannelSampleWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
