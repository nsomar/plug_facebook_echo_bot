defmodule Sample.Mixfile do
  use Mix.Project

  def project do
    [app: :plug_sample,
     version: "0.0.1",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  def application do
    [applications: [:logger, :plug, :cowboy],
     env: [server_port: 8080],
     mod: {Sample.Server, []}]
  end

  defp deps do
    [{:plug, "> 0.0.0"},
     {:cowboy, "> 0.0.0"}]
  end
end
