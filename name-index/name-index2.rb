class NameIndex
  KANA = ('ア'..'ン').to_a
  KANA_AGYOU = ['ア','カ','サ','タ','ナ','ハ','マ','ヤ','ラ','ワ']
  NUM = [0..8, 9..18, 19..28, 29..39, 40..44, 45..59, 60..64, 65..70, 71..75, 76..81]

  def self.create_index(names)
    group = []
      for i in 0..9 do
        content = names.sort.select{|name| NUM[i] === KANA.find_index(name[0])}
        key = KANA_AGYOU[i]
        group << [key,content] unless content[0].nil?
      end
    return group
  end
end

print NameIndex.create_index(['キシモト', 'イトウ', 'ババ', 'カネダ', 'ワダ', 'ハマダ'])