defmodule KanaRoma.MixProject do
  use Mix.Project

  def project do
    [
      app: :kana_roma,
      version: "0.1.0",
      elixir: "~> 1.6",
      description: "Library to convert Japanese characters between kana-moji and roman-moji.",
      start_permanent: Mix.env() == :prod,
      package: [
        maintainers: ["kkbnart"],
        licenses: ["MIT"],
        lionks: %{"GitHub" => "https://github.com/aratakokubun"}
      ],
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:credo, "~> 1.0.0", only: [:dev, :test], runtime: false},
      {:ex_doc, "~> 0.18.0", only: :dev, runtime: false},
      {:dialyxir, "~> 1.0.0-rc.4", only: [:dev], runtime: false}
    ]
  end
end
