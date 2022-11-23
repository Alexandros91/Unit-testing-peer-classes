class SecretDiary
  def initialize(diary)
    @diary = diary
    @is_locked = false
  end

  def read
    fail "Go away!" if @is_locked == true
    return @diary.read
  end

  def lock
    @is_locked = true
  end

  def unlock
    @is_locked = false
  end
end