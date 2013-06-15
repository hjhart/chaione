class DonkeyKong
  def execute
    result = []
    1.upto(100).each do |i|
      if(i % 15 == 0)
        result << "DonkeyKong"
      elsif(i % 3 == 0)
        result << "Donkey"
      elsif(i % 5 == 0)
        result << "Kong"
      else
        result << i
      end
    end
    result
  end
end