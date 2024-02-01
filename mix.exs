defmodule Deribit.MixProject do
  use Mix.Project

  def project do
    [
      app: :deribit,
      version: "0.2.1",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      name: "Deribit",
      source_url: "https://github.com/fbettag/deribit-elixir",
      description: " Deribit v2 API client for Elixir",
      package: package()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp package do
    [
      files: ~w(lib mix.exs README*),
      licenses: ["Apache 2.0"],
      links: %{
        "GitHub" => "https://github.com/fbettag/deribit-elixir",
        "Docs" => "https://hexdocs.pm/crudry/"
      }
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.19", only: :dev, runtime: false},
      {:httpoison, "~> 2.2.1"},
      {:jason, "~> 1.4.1"}
    ]
  end
end
