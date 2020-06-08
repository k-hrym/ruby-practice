class NameIndex
  KANA = ('ア'..'ン').to_a

  def self.create_index(names)
    names.sort.map do |name|
    case KANA.find_index(name[0])
    when 0..8
        array1 = Array.new(['ア',[]])
    when 9..18
      if array2
        array2[1] << name
      else
       array2 = Array.new(['カ',[] << name])
      end
    when 19..28
      if array3
        array3[1] << name
      else
       array3 = Array.new(['サ',[] << name])
      end
    when 29..39
      if array4
        array4[1] << name
      else
       array4 = Array.new(['タ',[] << name])
      end
    when 40..44
      if array5
        array5[1] << name
      else
       array5 = Array.new(['ナ',[] << name])
      end
    when 45..59
      if array6
        array6[1] << name
      else
       array6 = Array.new(['ハ',[] << name])
      end
    when 60..64
      if array7
        array7[1] << name
      else
       array7 = Array.new(['マ',[] << name])
      end
    when 65..70
      if array8
        array8[1] << name
      else
       array8 = Array.new(['ヤ',[] << name])
      end
    when 71..75
      if array9
        array9[1] << name
      else
       array9 = Array.new(['ラ',[] << name])
      end
    when 76..81
      if array10
        array10[1] << name
      else
       array10 = Array.new(['ワ',[] << name])
      end
    end
  end
  end
end

p NameIndex.create_index(['キシモト', 'イトウ', 'ババ', 'カネダ', 'ワダ', 'ハマダ'])