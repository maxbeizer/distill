defmodule DistillWeb.Router do
  use DistillWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", DistillWeb do
    pipe_through :browser

    get "/", PageController, :index
    get "/health", PageController, :health
  end

  # Other scopes may use custom stacks.
  # scope "/api", DistillWeb do
  #   pipe_through :api
  # end
end
