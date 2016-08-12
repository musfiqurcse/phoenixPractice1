defmodule FirstProject.Router do
  use FirstProject.Web, :router

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

  scope "/", FirstProject do
    pipe_through :browser # Use the default browser stack
    get "/hello/:name", HelloController, :show
    get "/", PageController, :index
    get "/user", UserController, :index
    get "/show/:id", UserController, :show
    ##get "/Service", ServiceController, :index
    resources "/services", ServiceController

  end

  # Other scopes may use custom stacks.
  # scope "/api", FirstProject do
  #   pipe_through :api
  # end
end
