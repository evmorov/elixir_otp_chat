defmodule ChatClient.MixProject do
  use Mix.Project

  def project do
    [
      app: :chat_client,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      mod: {ChatClient.Application, []},
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:chat_server, path: "../chat_server"}
    ]
  end
end
