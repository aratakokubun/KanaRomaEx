defmodule Models.KanaRomaPair do
  @moduledoc """
  Struct for a pair of corresponding kana and roman characters.
  """

  defstruct kana: 'かな', roma: 'roma'

  @typedoc """
      Type that represents KanaRomaPair struct with :kana as binary and :roma as binary.
  """
  @type pair :: %Models.KanaRomaPair{kana: binary, roma: binary}
end
