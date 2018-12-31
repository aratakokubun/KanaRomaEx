[![Build Status](https://travis-ci.org/aratakokubun/KanaRomaEx.svg?branch=master)](https://travis-ci.org/aratakokubun/KanaRomaEx)
[![hex.pm version](https://img.shields.io/hexpm/v/kana_roma.svg)](https://hex.pm/packages/kana_roma)

# KanaRoma

Library to convert Japanese characters between kana-moji and roman-moji.
You can convert both from kana to roman and roman to kana.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `kana_roma` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:kana_roma, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/kana_roma](https://hexdocs.pm/kana_roma).

## Usage

Use `kana2roma` to convert kana characters to roman characters,
and use `roma2kana` to convert roman characters to kana characters.

Characters which can not be converted are to be original characters(as-is).

```elixir
iex> KanaRoma.kana2roma "あいう azAZ09% ａｚＡＺ０９、。 わをん"
"aiu azAZ09% ａｚＡＺ０９、。 wawon"
iex> KanaRoma.roma2kana "aiu azAZ09% ａｚＡＺ０９、。 wawon"
"あいう あzAZ09% ａｚＡＺ０９、。 わをん"
```

## License

Copyright(c) 2018 aratakokubun Licensed under the MIT license.
