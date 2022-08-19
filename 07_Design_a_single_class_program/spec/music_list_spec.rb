require "music_list"

describe MusicList do
  it "returns an empty list when nothing is added" do
    music_list = MusicList.new
    expect(music_list.list).to eq []
  end

  it "returns a list with the added track" do
    music_list = MusicList.new
    music_list.add ("running up that hill")
    expect(music_list.list).to eq ["running up that hill"]
  end

  it "returns a list with two added track" do
    music_list = MusicList.new
    music_list.add ("running up that hill")
    music_list.add ("track 2")
    expect(music_list.list).to eq ["running up that hill", "track 2"]
  end

  it "returns a list with only unique traks" do
    music_list = MusicList.new
    music_list.add ("running up that hill")
    music_list.add ("track 2")
    music_list.add ("track 2")
    expect(music_list.list).to eq ["running up that hill", "track 2"]
  end
end
