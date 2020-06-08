class NameIndex
  KANA = ('ア'..'ン').to_a

  def self.create_index(names)
    names.sort.map do |name|
      case KANA.find_index(name[0])
      when 0..8
      if array1
        array1[1] << name
      else
          array1 = Array.new(['ア',[] << name])
      end
    end
  end
end