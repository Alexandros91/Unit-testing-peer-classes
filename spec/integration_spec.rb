require 'diary'
require 'secret_diary'

RSpec.describe 'integration' do
  describe '#read' do
    it 'initially is unlocked and returns the contents' do
      diary = Diary.new("my contents")
      secret_diary = SecretDiary.new(diary)
      expect(secret_diary.read).to eq "my contents"
    end

    context 'if the diary is locked' do
      it 'raises error' do
        diary = Diary.new("my contents")
        secret_diary = SecretDiary.new(diary)
        secret_diary.lock
        expect { secret_diary.read }.to raise_error "Go away!"
      end
    end

    context 'if the diary is unlocked' do
      it 'returns the contents' do
        diary = Diary.new("my contents")
        secret_diary = SecretDiary.new(diary)
        secret_diary.lock
        secret_diary.unlock
        expect(secret_diary.read).to eq "my contents"
      end
    end
  end
end