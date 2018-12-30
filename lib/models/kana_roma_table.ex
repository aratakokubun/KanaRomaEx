defmodule Models.KanaRomaTable do
  @moduledoc """
  Module to define pairs of kana characters and corresponding roman characters.
  """

  alias Models.KanaRomaPair, as: KanaRomaPair

  @tri_table [%KanaRomaPair{kana: "う゛ぁ", roma: "va"}, %KanaRomaPair{kana: "う゛ぃ", roma: "vi"}, %KanaRomaPair{kana: "う゛ぇ", roma: "ve"}, %KanaRomaPair{kana: "う゛ぉ", roma: "vo"}]

  @bi_table [%KanaRomaPair{kana: "きゃ", roma: "kya"}, %KanaRomaPair{kana: "きゅ", roma: "kyu"}, %KanaRomaPair{kana: "きょ", roma: "kyo"},
             %KanaRomaPair{kana: "ぎゃ", roma: "gya"}, %KanaRomaPair{kana: "ぎゅ", roma: "gyu"}, %KanaRomaPair{kana: "ぎょ", roma: "gyo"},
             %KanaRomaPair{kana: "しゃ", roma: "sha"}, %KanaRomaPair{kana: "しゅ", roma: "shu"}, %KanaRomaPair{kana: "しょ", roma: "sho"},
             %KanaRomaPair{kana: "じゃ", roma: "ja"}, %KanaRomaPair{kana: "じゅ", roma: "ju"}, %KanaRomaPair{kana: "じょ", roma: "jo"},
             %KanaRomaPair{kana: "ちゃ", roma: "cha"}, %KanaRomaPair{kana: "ちゅ", roma: "chu"}, %KanaRomaPair{kana: "ちょ", roma: "cho"},
             %KanaRomaPair{kana: "ぢゃ", roma: "dya"}, %KanaRomaPair{kana: "ぢゅ", roma: "dyu"}, %KanaRomaPair{kana: "ぢょ", roma: "dyo"},
             %KanaRomaPair{kana: "でゃ", roma: "dha"}, %KanaRomaPair{kana: "でぃ", roma: "dhi"}, %KanaRomaPair{kana: "でゅ", roma: "dhu"}, %KanaRomaPair{kana: "でぇ", roma: "dhe"}, %KanaRomaPair{kana: "でょ", roma: "dho"},
             %KanaRomaPair{kana: "にゃ", roma: "nya"}, %KanaRomaPair{kana: "にゅ", roma: "nyu"}, %KanaRomaPair{kana: "にょ", roma: "nyo"},
             %KanaRomaPair{kana: "ひゃ", roma: "hya"}, %KanaRomaPair{kana: "ひゅ", roma: "hyu"}, %KanaRomaPair{kana: "ひょ", roma: "hyo"},
             %KanaRomaPair{kana: "びゃ", roma: "bya"}, %KanaRomaPair{kana: "びゅ", roma: "byu"}, %KanaRomaPair{kana: "びょ", roma: "byo"},
             %KanaRomaPair{kana: "ぴゃ", roma: "pya"}, %KanaRomaPair{kana: "ぴゅ", roma: "pyu"}, %KanaRomaPair{kana: "ぴょ", roma: "pyo"},
             %KanaRomaPair{kana: "みゃ", roma: "mya"}, %KanaRomaPair{kana: "みゅ", roma: "myu"}, %KanaRomaPair{kana: "みょ", roma: "myo"},
             %KanaRomaPair{kana: "りゃ", roma: "rya"}, %KanaRomaPair{kana: "りゅ", roma: "ryu"}, %KanaRomaPair{kana: "りょ", roma: "ryo"},
             %KanaRomaPair{kana: "てぁ", roma: "tha"}, %KanaRomaPair{kana: "てぃ", roma: "thi"}, %KanaRomaPair{kana: "てぇ", roma: "tee"},
             %KanaRomaPair{kana: "う゛", roma: "vu"},
             %KanaRomaPair{kana: "っか", roma: "kka"}, %KanaRomaPair{kana: "っき", roma: "kki"}, %KanaRomaPair{kana: "っく", roma: "kku"}, %KanaRomaPair{kana: "っけ", roma: "kke"}, %KanaRomaPair{kana: "っこ", roma: "kko"},
             %KanaRomaPair{kana: "っさ", roma: "ssa"}, %KanaRomaPair{kana: "っし", roma: "sshi"}, %KanaRomaPair{kana: "っし", roma: "ssi"}, %KanaRomaPair{kana: "っす", roma: "ssu"}, %KanaRomaPair{kana: "っせ", roma: "sse"}, %KanaRomaPair{kana: "っそ", roma: "sso"},
             %KanaRomaPair{kana: "った", roma: "tta"}, %KanaRomaPair{kana: "っち", roma: "cchi"}, %KanaRomaPair{kana: "っち", roma: "tti"}, %KanaRomaPair{kana: "っつ", roma: "ttu"}, %KanaRomaPair{kana: "って", roma: "tte"}, %KanaRomaPair{kana: "っと", roma: "tto"},
             %KanaRomaPair{kana: "っな", roma: "nna"}, %KanaRomaPair{kana: "っに", roma: "nni"}, %KanaRomaPair{kana: "っぬ", roma: "nnu"}, %KanaRomaPair{kana: "っね", roma: "nne"}, %KanaRomaPair{kana: "っの", roma: "nno"},
             %KanaRomaPair{kana: "っは", roma: "hha"}, %KanaRomaPair{kana: "っひ", roma: "hhi"}, %KanaRomaPair{kana: "っふ", roma: "ffu"}, %KanaRomaPair{kana: "っへ", roma: "hhe"}, %KanaRomaPair{kana: "っほ", roma: "hho"},
             %KanaRomaPair{kana: "っま", roma: "mma"}, %KanaRomaPair{kana: "っみ", roma: "mmi"}, %KanaRomaPair{kana: "っむ", roma: "mmu"}, %KanaRomaPair{kana: "っめ", roma: "mme"}, %KanaRomaPair{kana: "っも", roma: "mmo"},
             %KanaRomaPair{kana: "っや", roma: "yya"}, %KanaRomaPair{kana:  "っゆ", roma: "yyu"}, %KanaRomaPair{kana: "っよ", roma: "yyo"},
             %KanaRomaPair{kana: "っら", roma: "rra"}, %KanaRomaPair{kana: "っり", roma: "rri"}, %KanaRomaPair{kana: "っる", roma: "rru"}, %KanaRomaPair{kana: "っれ", roma: "rre"}, %KanaRomaPair{kana: "っろ", roma: "rro"},
             %KanaRomaPair{kana: "っわ", roma: "wwa"},
             %KanaRomaPair{kana: "っが", roma: "gga"}, %KanaRomaPair{kana: "っぎ", roma: "ggi"}, %KanaRomaPair{kana: "っぐ", roma: "ggu"}, %KanaRomaPair{kana: "っげ", roma: "gge"}, %KanaRomaPair{kana: "っご", roma: "ggo"},
             %KanaRomaPair{kana: "っざ", roma: "zza"}, %KanaRomaPair{kana: "っじ", roma: "jji"}, %KanaRomaPair{kana: "っず", roma: "zzu"}, %KanaRomaPair{kana: "っぜ", roma: "zze"}, %KanaRomaPair{kana: "っぞ", roma: "zzo"},
             %KanaRomaPair{kana: "っだ", roma: "dda"}, %KanaRomaPair{kana: "っぢ", roma: "ddi"}, %KanaRomaPair{kana: "っづ", roma: "ddu"}, %KanaRomaPair{kana: "っで", roma: "dde"}, %KanaRomaPair{kana: "っど", roma: "ddo"},
             %KanaRomaPair{kana: "っば", roma: "bba"}, %KanaRomaPair{kana: "っび", roma: "bbi"}, %KanaRomaPair{kana: "っぶ", roma: "bbu"}, %KanaRomaPair{kana: "っべ", roma: "bbe"}, %KanaRomaPair{kana: "っぼ", roma: "bbo"},
             %KanaRomaPair{kana: "っぱ", roma: "ppa"}, %KanaRomaPair{kana: "っぴ", roma: "ppi"}, %KanaRomaPair{kana: "っぷ", roma: "ppu"}, %KanaRomaPair{kana: "っぺ", roma: "ppe"}, %KanaRomaPair{kana: "っぽ", roma: "ppo"}]

  @uni_table [%KanaRomaPair{kana: "あ", roma: "a"}, %KanaRomaPair{kana: "い", roma: "i"}, %KanaRomaPair{kana: "う", roma: "u"}, %KanaRomaPair{kana: "え", roma: "e"}, %KanaRomaPair{kana: "お", roma: "o"},
              %KanaRomaPair{kana: "か", roma: "ka"}, %KanaRomaPair{kana: "き", roma: "ki"}, %KanaRomaPair{kana: "く", roma: "ku"}, %KanaRomaPair{kana: "け", roma: "ke"}, %KanaRomaPair{kana: "こ", roma: "ko"},
              %KanaRomaPair{kana: "さ", roma: "sa"}, %KanaRomaPair{kana: "し", roma: "shi"}, %KanaRomaPair{kana: "し", roma: "si"}, %KanaRomaPair{kana: "す", roma: "su"}, %KanaRomaPair{kana: "せ", roma: "se"}, %KanaRomaPair{kana: "そ", roma: "so"},
              %KanaRomaPair{kana: "た", roma: "ta"}, %KanaRomaPair{kana: "ち", roma: "chi"}, %KanaRomaPair{kana: "ち", roma: "ti"}, %KanaRomaPair{kana: "つ", roma: "tu"}, %KanaRomaPair{kana: "て", roma: "te"}, %KanaRomaPair{kana: "と", roma: "to"},
              %KanaRomaPair{kana: "な", roma: "na"}, %KanaRomaPair{kana: "に", roma: "ni"}, %KanaRomaPair{kana: "ぬ", roma: "nu"}, %KanaRomaPair{kana: "ね", roma: "ne"}, %KanaRomaPair{kana: "の", roma: "no"},
              %KanaRomaPair{kana: "は", roma: "ha"}, %KanaRomaPair{kana: "ひ", roma: "hi"}, %KanaRomaPair{kana: "ふ", roma: "fu"}, %KanaRomaPair{kana: "へ", roma: "he"}, %KanaRomaPair{kana: "ほ", roma: "ho"},
              %KanaRomaPair{kana: "ま", roma: "ma"}, %KanaRomaPair{kana: "み", roma: "mi"}, %KanaRomaPair{kana: "む", roma: "mu"}, %KanaRomaPair{kana: "め", roma: "me"}, %KanaRomaPair{kana: "も", roma: "mo"},
              %KanaRomaPair{kana: "や", roma: "ya"}, %KanaRomaPair{kana: "ゆ", roma: "yu"}, %KanaRomaPair{kana: "よ", roma: "yo"},
              %KanaRomaPair{kana: "ら", roma: "ra"}, %KanaRomaPair{kana: "り", roma: "ri"}, %KanaRomaPair{kana: "る", roma: "ru"}, %KanaRomaPair{kana: "れ", roma: "re"}, %KanaRomaPair{kana: "ろ", roma: "ro"},
              %KanaRomaPair{kana: "わ", roma: "wa"}, %KanaRomaPair{kana: "を", roma: "wo"}, %KanaRomaPair{kana: "ん", roma: "n"},
              %KanaRomaPair{kana: "が", roma: "ga"}, %KanaRomaPair{kana: "ぎ", roma: "gi"}, %KanaRomaPair{kana: "ぐ", roma: "gu"}, %KanaRomaPair{kana: "げ", roma: "ge"}, %KanaRomaPair{kana: "ご", roma: "go"},
              %KanaRomaPair{kana: "ざ", roma: "za"}, %KanaRomaPair{kana: "じ", roma: "ji"}, %KanaRomaPair{kana: "ず", roma: "zu"}, %KanaRomaPair{kana: "ぜ", roma: "ze"}, %KanaRomaPair{kana: "ぞ", roma: "zo"},
              %KanaRomaPair{kana: "だ", roma: "da"}, %KanaRomaPair{kana: "ぢ", roma: "di"}, %KanaRomaPair{kana: "づ", roma: "du"}, %KanaRomaPair{kana: "で", roma: "de"}, %KanaRomaPair{kana: "ど", roma: "do"},
              %KanaRomaPair{kana: "ば", roma: "ba"}, %KanaRomaPair{kana: "び", roma: "bi"}, %KanaRomaPair{kana: "ぶ", roma: "bu"}, %KanaRomaPair{kana: "べ", roma: "be"}, %KanaRomaPair{kana: "ぼ", roma: "bo"},
              %KanaRomaPair{kana: "ぱ", roma: "pa"}, %KanaRomaPair{kana: "ぴ", roma: "pi"}, %KanaRomaPair{kana: "ぷ", roma: "pu"}, %KanaRomaPair{kana: "ぺ", roma: "pe"}, %KanaRomaPair{kana: "ぽ", roma: "po"},
              %KanaRomaPair{kana: "ぁ", roma: "xa"}, %KanaRomaPair{kana: "ぃ", roma: "xi"}, %KanaRomaPair{kana: "ぅ", roma: "xu"}, %KanaRomaPair{kana: "ぇ", roma: "xe"}, %KanaRomaPair{kana: "ぉ", roma: "xo"},
              %KanaRomaPair{kana: "ゃ", roma: "xya"}, %KanaRomaPair{kana: "ゅ", roma: "xyu"}, %KanaRomaPair{kana: "ょ", roma: "xyo"}, %KanaRomaPair{kana: "っ", roma: "xtsu"}]

  def get_kana_table(2) do
    @tri_table
  end

  def get_kana_table(1) do
    @bi_table
  end

  def get_kana_table(0) do
    @uni_table
  end

  def get_combined_table do
    @tri_table ++ @bi_table ++ @uni_table
  end
end
