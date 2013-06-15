require 'rspec'
require 'donkey_kong'

describe DonkeyKong do
  it "starts with the numbers 1, 2" do
    result = subject.execute
    result[0..1].should =~ [1,2]
  end
  it "prints out the word Donkey in the third, sixth, and ninth slot" do
    result = subject.execute
    result[2].should eq "Donkey"
    result[5].should eq "Donkey"
    result[8].should eq "Donkey"
  end
  it "prints out the word Kong in the fifth, tenth, and twentieth slot" do
    result = subject.execute
    result[4].should eq "Kong"
    result[9].should eq "Kong"
    result[19].should eq "Kong"
  end
  it "prints out the word DonkeyKong in the fifteenth and thirtieth slot" do
    result = subject.execute
    result[14].should eq "DonkeyKong"
    result[29].should eq "DonkeyKong"
  end
end