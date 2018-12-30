defmodule KanaRomaTest do
  alias Models.KanaRomaPair, as: Pair

  use ExUnit.Case
  doctest KanaRoma

  test "1 kana character to roma" do
    assert KanaRoma.kana2roma("か", 0, 2, []) == [%Pair{kana: "か", roma: "ka"}]
    assert KanaRoma.kana2roma("ざ", 0, 2, []) == [%Pair{kana: "ざ", roma: "za"}]
    assert KanaRoma.kana2roma("ぱ", 0, 2, []) == [%Pair{kana: "ぱ", roma: "pa"}]
    assert KanaRoma.kana2roma("ゃ", 0, 2, []) == [%Pair{kana: "ゃ", roma: "xya"}]
  end

  test "2 kana characters to roma" do
    assert KanaRoma.kana2roma("う゛", 0, 2, []) == [%Pair{kana: "う゛", roma: "vu"}]
    assert KanaRoma.kana2roma("しゃ", 0, 2, []) == [%Pair{kana: "しゃ", roma: "sha"}]
    assert KanaRoma.kana2roma("ぎゃ", 0, 2, []) == [%Pair{kana: "ぎゃ", roma: "gya"}]
    assert KanaRoma.kana2roma("っち", 0, 2, []) == [%Pair{kana: "っち", roma: "cchi"}]
    assert KanaRoma.kana2roma("っだ", 0, 2, []) == [%Pair{kana: "っだ", roma: "dda"}]
    assert KanaRoma.kana2roma("っぱ", 0, 2, []) == [%Pair{kana: "っぱ", roma: "ppa"}]
  end

  test "3 kana characters to roma" do
    assert KanaRoma.kana2roma("う゛ぇ", 0, 2, []) == [%Pair{kana: "う゛ぇ", roma: "ve"}]
  end

  test "non kana characters to original" do
    assert KanaRoma.kana2roma("ka", 0, 2, []) == [%Pair{kana: "k", roma: "k"}, %Pair{kana: "a", roma: "a"}]
    assert KanaRoma.kana2roma("1",  0, 2, []) == [%Pair{kana: "1", roma: "1"}]
    assert KanaRoma.kana2roma("ア",  0, 2, []) == [%Pair{kana: "ア", roma: "ア"}]
    assert KanaRoma.kana2roma("Ａ",  0, 2, []) == [%Pair{kana: "Ａ", roma: "Ａ"}]
  end

  test "kana characters converted as specified index and length" do
    assert KanaRoma.kana2roma("びゃ", 0, 0, []) == [%Pair{kana: "び", roma: "bi"}, %Pair{kana: "ゃ", roma: "xya"}]
    assert KanaRoma.kana2roma("びゃ", 0, 1, []) == [%Pair{kana: "びゃ", roma: "bya"}]
    assert KanaRoma.kana2roma("びゃ", 1, 2, []) == [%Pair{kana: "ゃ", roma: "xya"}]
  end

  test "1 roma character to kana" do
    assert KanaRoma.roma2kana("a", 0, 3, []) == [%Pair{kana: "あ", roma: "a"}]
  end

  test "2 roma character to kana" do
    assert KanaRoma.roma2kana("sa", 0, 3, []) == [%Pair{kana: "さ", roma: "sa"}]
    assert KanaRoma.roma2kana("ju", 0, 3, []) == [%Pair{kana: "じゅ", roma: "ju"}]
    assert KanaRoma.roma2kana("pu", 0, 3, []) == [%Pair{kana: "ぷ", roma: "pu"}]
    assert KanaRoma.roma2kana("xe", 0, 3, []) == [%Pair{kana: "ぇ", roma: "xe"}]
  end

  test "3 roma character to kana" do
    assert KanaRoma.roma2kana("hyu", 0, 3, []) == [%Pair{kana: "ひゅ", roma: "hyu"}]
    assert KanaRoma.roma2kana("dhi", 0, 3, []) == [%Pair{kana: "でぃ", roma: "dhi"}]
    assert KanaRoma.roma2kana("rro", 0, 3, []) == [%Pair{kana: "っろ", roma: "rro"}]
    assert KanaRoma.roma2kana("ppe", 0, 3, []) == [%Pair{kana: "っぺ", roma: "ppe"}]
    assert KanaRoma.roma2kana("shi", 0, 3, []) == [%Pair{kana: "し", roma: "shi"}]
  end

  test "4 roma character to kana" do
    assert KanaRoma.roma2kana("sshi", 0, 3, []) == [%Pair{kana: "っし", roma: "sshi"}]
    assert KanaRoma.roma2kana("cchi", 0, 3, []) == [%Pair{kana: "っち", roma: "cchi"}]
    assert KanaRoma.roma2kana("xtsu", 0, 3, []) == [%Pair{kana: "っ", roma: "xtsu"}]
  end

  test "characters which has no corresponding kana to original" do
    assert KanaRoma.roma2kana("か",  0, 3, []) == [%Pair{kana: "か", roma: "か"}]
    assert KanaRoma.roma2kana("1",  0, 3, []) == [%Pair{kana: "1", roma: "1"}]
    assert KanaRoma.roma2kana("ア",  0, 3, []) == [%Pair{kana: "ア", roma: "ア"}]
    assert KanaRoma.roma2kana("Ａ",  0, 3, []) == [%Pair{kana: "Ａ", roma: "Ａ"}]
    assert KanaRoma.roma2kana("xh",  0, 3, []) == [%Pair{kana: "x", roma: "x"}, %Pair{kana: "h", roma: "h"}]
  end

  test "roma characters converted as specified index and length" do
    assert KanaRoma.roma2kana("xya", 0, 0, []) == [%Pair{kana: "x", roma: "x"}, %Pair{kana: "や", roma: "ya"}]
    assert KanaRoma.roma2kana("xya", 0, 1, []) == [%Pair{kana: "x", roma: "x"}, %Pair{kana: "や", roma: "ya"}]
    assert KanaRoma.roma2kana("xya", 0, 2, []) == [%Pair{kana: "ゃ", roma: "xya"}]
    assert KanaRoma.roma2kana("xya", 1, 2, []) == [%Pair{kana: "や", roma: "ya"}]
  end
end
