require 'diary'

RSpec.describe Diary do
  it 'returns the contents of the diary' do
    diary = Diary.new("my contents")
    expect(diary.read).to eq "my contents"
  end
end