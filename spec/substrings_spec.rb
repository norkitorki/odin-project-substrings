require '../substrings.rb'

DICTIONARY = [
  "below","down","go","going","horn","how","howdy","it","i","low","own","part",
  "partner","sit"
]

describe "#substrings" do
  it "works with lowercase words" do
    expect(substrings("below", DICTIONARY)).to eq({ "below" => 1, "low" => 1 })
  end

  it "works with uppercase words" do
    expect(substrings("BELOW", DICTIONARY)).to eq({ "below" => 1, "low" => 1 })
  end

  it "works with multiple words" do
    expect(substrings(
      "Howdy partner, sit down! How's it going?", DICTIONARY)).to eq(
        {
          "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1,
          "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1,
          "sit" => 1
        }
      )
  end
end
