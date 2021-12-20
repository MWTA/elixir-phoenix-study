defmodule HelloWeb.HelloController do
  use HelloWeb, :controller

  # plug(HelloWeb.Plugs.Locale, "en")
  # plug(HelloWeb.Plugs.Locale, "fr" when action in [:index])

  # index - renders a list of all items of the given resource type
  # http://localhost:4000/?_format=text
  def index(conn, _params) do
    MyComponent.greet(%{name: "Jane"})
    render(conn, "index.html", username: "joe")

    # redirect(conn, to: "/redirect_test")
  end

  # show - renders an individual item by ID.
  # Example: http://localhost:4000/hello/Frank
  def show(conn, %{"messenger" => messenger}) do
    # text(conn, "From messenger #{messenger}")
    # json(conn, %{id: messenger})
    # render(conn, "show.html", messenger: messenger)

    # conn
    # |> Plug.Conn.assign(:messenger, messenger)
    # |> render("show.html")

    # conn
    # |> assign(:messenger, messenger)
    # |> assign(:receiver, "Dweezil")
    # |> render("show.html")
  end

  # new - renders a form for creating a new item.

  # create - receives parameters for one new item and saves it in a data store.

  # edit - retrieves an individual item by ID and displays it in a form for editing.

  # update - receives parameters for one edited item and saves the item to a data store.

  # delete - receives an ID for an item to be deleted and deletes it from a data store.

  defmodule MyComponent do
    use Phoenix.Component

    # Optionally also bring the HTML helpers
    # use Phoenix.HTML

    def greet(assigns) do
      ~H"""
      <p>Hello, <%= assigns.name %></p>
      """
    end
  end
end
