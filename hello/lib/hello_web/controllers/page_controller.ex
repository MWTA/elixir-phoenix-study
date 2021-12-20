defmodule HelloWeb.PageController do
  use HelloWeb, :controller

  action_fallback(HelloWeb.MyFallbackController)

  def index(conn, _params) do
    # render(conn, "index.html")

    conn
    |> put_flash(:info, "Welcome to Phoenix, from flash info!")
    |> put_flash(:error, "Let's pretend we have an error.")
    |> render("index.html")

    # flash which redirect
    # conn
    # |> put_flash(:info, "Welcome to Phoenix, from flash info!")
    # |> put_flash(:error, "Let's pretend we have an error.")
    # |> redirect(to: Routes.page_path(conn, :redirect_test))
  end


end
