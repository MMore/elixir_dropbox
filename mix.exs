defmodule ElixirDropbox.Mixfile do
  use Mix.Project

  @description """
    Simple Elixir wrapper for the Dropbox v2 API
  """

  def project do
    [app: :elixir_dropbox,
     version: "0.1.1",
     elixir: "~> 1.6",
     name: "ElixirDropbox",
     description: @description,
     package: package(),
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :httpoison, :hackney, :json]]
  end

  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:httpoison, "~> 1.4"},
      {:poison, "~> 3.0"},
      {:inch_ex, "~> 0.5", only: [:dev, :test]},
      {:json, "~> 1.2.5"},
      {:ex_doc, "~> 0.14", only: :dev, runtime: false}
    ]
  end

  defp package do
    [maintainers: ["Spiros Gerokostas"],
     licenses: ["MIT"],
     links: %{ "GitHub" => "https://github.com/sger/elixir_dropbox" }]
  end
end
