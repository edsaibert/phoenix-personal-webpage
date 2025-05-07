defmodule FirstAppWeb.ImageGrid do
  use Phoenix.Component

  @moduledoc """
  A component for rendering an image grid.
  """

  @doc """
  Renders the image grid.

  ## Props

    * `:path` - The base path for the images.
    * `:images` - A list of image filenames.

  ## Examples

      <.image_grid path="/images" images={@images} />

  """

  use Phoenix.Component
  def image_grid(assigns) do
    ~H"""
    <div class="flex max-w-md">
        <%= for img <- @images do %>
            <img class="pe-5 mt-2 w-auto flex-shrink min-w-0 object-contain" src={Path.join(@path, img)} alt={img}/>
        <% end %>
    </div>
    """
  end
end
