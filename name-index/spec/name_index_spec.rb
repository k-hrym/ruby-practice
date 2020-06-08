require File.expand_path(File.dirname(__FILE__) + '/../name_index')

describe NameIndex do
  specify { expect(NameIndex.create_index('キ')).to eq 12 }
end

    names = ['キシモト', 'イトウ', 'ババ', 'カネダ', 'ワダ', 'ハマダ']
 p names.sort

 [ ['ア', ['イトウ']], ['カ', ['カネダ', 'キシモト']], ['ハ', ['ハマダ', 'ババ']], ['ワ', ['ワダ']] ]
 a = [['ア','カ','ハ','ワ'],[['イトウ'],['カネダ', 'キシモト'],['ハマダ', 'ババ'],['ワダ']]]

if array
  puts true
else
  puts false
  array = Array.new
end