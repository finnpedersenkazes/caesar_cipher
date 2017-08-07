
def encrypt_letter(letter, permutation_level)
  return letter if letter.match(/\W/) || letter.match(/\d/) # <-- guard clause to handle an exception
  letters = ("A".."Z").to_a
  letter_index = letters.index(letter)
  return letters[letter_index - permutation_level]
end

def encrypt(sentence, permutation_level = 3)
  letters = sentence.split("")
  encrypted = letters.map { |letter| encrypt_letter(letter, permutation_level) }
  return encrypted.join
end

def decrypt(text)
  # try all permutation levels
  possibilities = (1..25).map { |i| encrypt(text, i) }
  return possibilities # return them all in an array
end

puts decrypt("SX MBIZDYQBKZRI, K MKOCKB MSZROB, KVCY UXYGX KC MKOCKB'C MSZROB, DRO CRSPD MSZROB, MKOCKB'C MYNO YB MKOCKB CRSPD, SC YXO YP DRO CSWZVOCD KXN WYCD GSNOVI UXYGX OXMBIZDSYX DOMRXSAEOC. SD SC K DIZO YP CELCDSDEDSYX MSZROB SX GRSMR OKMR VODDOB SX DRO ZVKSXDOHD SC BOZVKMON LI K VODDOB CYWO PSHON XEWLOB YP ZYCSDSYXC NYGX DRO KVZRKLOD. PYB OHKWZVO, GSDR K VOPD CRSPD YP 3, N GYEVN LO BOZVKMON LI K, O GYEVN LOMYWO L, KXN CY YX. DRO WODRYN SC XKWON KPDOB TEVSEC MKOCKB, GRY ECON SD SX RSC ZBSFKDO MYBBOCZYXNOXMO.
  DRO OXMBIZDSYX CDOZ ZOBPYBWON LI K MKOCKB MSZROB SC YPDOX SXMYBZYBKDON KC ZKBD YP WYBO MYWZVOH CMROWOC, CEMR KC DRO FSQOXèBO MSZROB, KXN CDSVV RKC WYNOBX KZZVSMKDSYX SX DRO BYD13 CICDOW. KC GSDR KVV CSXQVO-KVZRKLOD CELCDSDEDSYX MSZROBC, DRO MKOCKB MSZROB SC OKCSVI LBYUOX KXN SX WYNOBX ZBKMDSMO YPPOBC OCCOXDSKVVI XY MYWWEXSMKDSYX COMEBSDI.")
