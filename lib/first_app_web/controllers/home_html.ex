defmodule FirstAppWeb.HomeHTML do
  @moduledoc """
  This module contains pages rendered by PageController.

  See the `page_html` directory for all templates available.
  """
  use FirstAppWeb, :html
  import FirstAppWeb.ImageGrid

  embed_templates "home_html/*"
end
