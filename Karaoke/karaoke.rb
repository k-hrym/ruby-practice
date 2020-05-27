class KaraokeMachine

  def initialize(melody)
    @melody = melody
  end

  def transpose(amount)
    scales = ["C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B"]
    @melody.split(/(\w#?)/).map{
          |m|  /(\w#?)/.match?(m) ?
          scales[(scales.find_index(m) + amount) % scales.length] : m
          }.join
  end

  melody = "F# G# A# B |A# G# F#   |A# B C# D# |C# B A#   |F#   F#   |F#   F#   |F#F#G#G#A#A#BB|A# G# F#   "
  answer = "C D E F |E D C   |E F G A |G F E   |C   C   |C   C   |CCDDEEFF|E D C   "
  mine = KaraokeMachine.new(melody).transpose(6)
  puts answer == mine
end

