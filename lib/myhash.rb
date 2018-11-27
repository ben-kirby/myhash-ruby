class MyHash
  attr_accessor(:key, :value)
  def initialize()
    @my_hash = []
  end

  def my_store(key, value)
    @pair = [key, value]
    @my_hash.push(@pair)
    # binding.pry
  end

  def my_fetch(key)
    value = ""
    @my_hash.each do |pair|
      if pair[0] == key
        value = pair[1]
        value
        break

      end
    end
    value
  end
end
