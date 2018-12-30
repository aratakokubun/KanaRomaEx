defmodule Models.KanaRomaPair do
  @moduledoc """
  Struct for a pair of corresponding kana and roman characters.
  """

  defstruct kana: 'かな', roma: 'roma'

  @typedoc """
      Type that represents KanaRomaPair struct with :kana as String and :roma as String.
  """
  @type pair :: %Models.KanaRomaPair{kana: String, roma: String}
end
