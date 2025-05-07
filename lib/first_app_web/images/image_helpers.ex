defmodule FirstAppWeb.Images do
  @moduledoc """
    Helper functions for working with images
  """

  @tech_images_path "priv/static/images/tech/*"
  # @personal_image_path "assets/static/images/profile.png"

  @doc """
    Returns a list of image filenames in the assets/static/images directory
  """
  def list_images do
    Path.wildcard(@tech_images_path)
      |> Enum.map(&Path.basename/1)
  end
end
