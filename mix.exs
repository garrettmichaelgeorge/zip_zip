defmodule ElixirStartingPoint.MixProject do
  use Mix.Project

  @version "0.1.0"

  def project do
    [
      app: :zipzip,
      version: @version,
      description: description(),
      name: "ZipZip",
      docs: docs(),
      build_path: "_build",
      deps_path: "deps",
      lockfile: "mix.lock",
      elixir: "~> 1.12",
      consolidate_protocols: Mix.env() != :test,
      deps: deps(),
      test_coverage: [tool: ExCoveralls],
      package: package(),
      source_url: "https://github.com/garrettmichaelgeorge/zip_zip",
      preferred_cli_env: [
        coveralls: :test,
        "coveralls.detail": :test,
        "coveralls.html": :test
      ],
      dialyzer: [
        plt_add_apps: [:elixir, :mix],
        flags: [
          :error_handling,
          :race_conditions,
          :underspecs
        ],
        ignore_warnings: ".dialyzer_ignore.exs"
      ]
    ]
  end

  def application do
    []
  end

  defp description,
    do: "A zipper implementation in Elixir"

  defp docs do
    [
      main: "ZipZip",
      # logo: "path/to/logo.png",
      extras: ["README.md"]
    ]
  end

  # https://hex.pm/docs/publish#adding-metadata-to-code-classinlinemixexscode
  defp package do
    [
      name: "zip_zip",
      organization: "hexpm",
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/garrettmichaelgeorge/zip_zip"}
    ]
  end

  defp deps do
    [
      {:credo, "~> 1.6.1", only: [:dev, :test], runtime: false},
      {:dialyxir, "~> 1.1", only: [:dev, :test], runtime: false},
      {:ex_doc, "~> 0.27", only: :dev, runtime: false},
      {:excoveralls, "~> 0.14", only: [:dev, :test], runtime: false}
    ]
  end
end
