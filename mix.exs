defmodule XIO.Mixfile do
  use Mix.Project

  def project() do
    [
      app: :rosemqx,
      version: "0.0.1",
      elixir: "~> 1.7",
      description: "XIO EMQ X 3.0 Elixir",
      package: package(),
      deps: deps()
    ]
  end

  def package do
    [
      files: ~w(doc include lib src mix.exs LICENSE),
      licenses: ["ISC"],
      maintainers: ["Namdak Tonpa"],
      name: :rosemqx,
      links: %{"GitHub" => "https://github.com/enterprizing/xio"}
    ]
  end

  def application() do
    [
      mod: {:rosemqx, []},
      # for mix release
      extra_applications: [:logger, :wx, :observer, :runtime_tools, :os_mon]
      # application: [
      #   :inets,
      #   # :mnesia,
      #   :gproc,
      #   :neotoma,
      #   :replayq,
      #   :clique,
      #   :asn1,
      #   :compiler,
      #   :syntax_tools,
      #   :crypto,
      #   :cowlib,
      #   :ekka,
      #   :goldrush,
      #   :public_key,
      #   :lager,
      #   :ssl,
      #   :ranch,
      #   :esockd,
      #   :gen_rpc,
      #   :ssl_verify_fun,
      #   :cowboy,
      #   :emqx,
      #   :os_mon,
      #   :minirest,
      #   :emqx_dashboard
      # ]
    ]
  end

  def deps() do
    [
      {:kvs, "~> 11.9.1", override: true},
      {:ranch, "~> 1.7.1", override: true},
      {:cowboy, "~> 2.8.0", override: true},
      {:cowlib, "~> 2.9.0", override: true},
      {:jsone, "~> 1.5.3", override: true},
      {:minirest, github: "rosemqx/minirest", ref: "emqx42", override: true},
      {:emqx, github: "rosemqx/emqx", tag: "master", override: true},
      # {:emqx_dashboard, github: "rosemqx/emqx-dashboard", ref: "master"},
      {:ex_doc, "~> 0.11", only: :dev}
    ]
  end
end
