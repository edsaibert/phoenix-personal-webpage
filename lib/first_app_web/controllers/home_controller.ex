defmodule FirstAppWeb.HomeController do
  use FirstAppWeb, :controller

  def home(conn, _params) do
    images = FirstAppWeb.Images.list_images()
    render(conn, :home, images: images, layout: {FirstAppWeb.Layouts, "home.html"})
  end

end
