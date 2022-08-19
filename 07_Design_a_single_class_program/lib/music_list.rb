class MusicList
  def initialize
    @music_list = []
  end

  def add(track)
    @music_list << track
  end

  def list
    @music_list.uniq
  end
end
