defmodule KanaRoma do
  @moduledoc """
  Module to convert Japanese characters between kana-moji('かな') and roman-moji('kana').
  """

  alias Models.KanaRomaPair, as: Pair
  alias Models.KanaRomaTable, as: Table

  @max_kana_len 2
  @max_roma_len 3

  @doc """
  Convert hiragana(ひらがな), wide styled Japanese characters, to roman characters.
  If non kana characters exist in the given string, they will be not converted, to be original characters.

  ## Examples
      iex> KanaRoma.kana2roma "ひらがな"
      "hiragana"
      iex> KanaRoma.kana2roma "あいう azAZ09% ａｚＡＺ０９、。 わをん"
      "aiu azAZ09% ａｚＡＺ０９、。 wawon"
  """
  @spec kana2roma(binary) :: binary
  def kana2roma(kana) do
    kana
    |> kana2roma(0, @max_kana_len, [])
    |> Enum.map(&(&1.roma))
    |> Enum.join()
  end

  @spec kana2roma(binary, integer, integer, list(Pair.pair)) :: list(Pair.pair)
  def kana2roma(kana, index, length, converted) do
    if String.length(kana) - 1 < index do
      converted
    else
      with sliced_kana <- String.slice(kana, index..index + length) do
        length
        |> Table.get_kana_table
        |> Enum.find(&(&1.kana == sliced_kana))
        |> append_sliced_kana(kana, index, length, sliced_kana, converted)
      end
    end
  end

  @spec append_sliced_kana(Pair.pair, binary, integer, integer, binary, list(Pair.pair)) :: list(Pair.pair)
  defp append_sliced_kana(nil, kana, index, 0, sliced_kana, converted) do
    with appended <- converted ++ [%Pair{kana: sliced_kana, roma: sliced_kana}] do
      kana2roma(kana, index + 1, @max_kana_len, appended)
    end
  end

  defp append_sliced_kana(nil, kana, index, length, _sliced_kana, converted) do
    kana2roma(kana, index, length - 1, converted)
  end

  defp append_sliced_kana(pair, kana, index, length, _sliced_kana, converted) do
    with appended <- converted ++ [pair] do
      kana2roma(kana, index + 1 + length, @max_kana_len, appended)
    end
  end

  @doc """
  Convert roman characters, to hiragana characters.
  if characters which has no corresponding kana characters in the given string, they will be not converted, to be original characters.

  ## Examples
      iex> KanaRoma.roma2kana "hiragana"
      "ひらがな"
      iex> KanaRoma.roma2kana "aiu azAZ09% ａｚＡＺ０９、。 wawon"
      "あいう あzAZ09% ａｚＡＺ０９、。 わをん"
  """
  @spec roma2kana(binary) :: binary
  def roma2kana(roma) do
    roma
    |> roma2kana(0, @max_roma_len, [])
    |> Enum.map(&(&1.kana))
    |> Enum.join()
  end

  @spec roma2kana(binary, integer, integer, list(Pair.pair)) :: list(Pair.pair)
  def roma2kana(roma, index, length, converted) do
    if String.length(roma) - 1 < index do
      converted
    else
      with sliced_roma <- String.slice(roma, index..index + length) do
        Table.get_combined_table
        |> Enum.find(&(&1.roma == sliced_roma))
        |> append_sliced_roma(roma, index, length, sliced_roma, converted)
      end
    end
  end

  @spec append_sliced_roma(Pair.pair, binary, integer, integer, binary, list(Pair.pair)) :: list(Pair.pair)
  defp append_sliced_roma(nil, roma, index, 0, sliced_roma, converted) do
    with appended <- converted ++ [%Pair{kana: sliced_roma, roma: sliced_roma}] do
      roma2kana(roma, index + 1, @max_roma_len, appended)
    end
  end

  defp append_sliced_roma(nil, roma, index, length, _sliced_roma, converted) do
    roma2kana(roma, index, length - 1, converted)
  end

  defp append_sliced_roma(pair, roma, index, length, _sliced_roma, converted) do
    with appended <- converted ++ [pair] do
      roma2kana(roma, index + 1 + length, @max_roma_len, appended)
    end
  end
end
