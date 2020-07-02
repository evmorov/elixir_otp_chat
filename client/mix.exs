defmodule Client.MixProject do
  use Mix.Project

  def project do
    [
      app: :client,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      included_applications: [:server],
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:server, path: "../server"}
    ]
  end
end
