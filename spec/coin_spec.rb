require_relative '../lib/coin.rb

describe "scrap_nom" do
  it "seach name of crypto" do
    expect(scrap_nom.lenght).to eq(2399)
  end
end


describe "new_hash" do

  it "seach name of crypto" do
    expect(new_hash.fetch("Bitcoin")==0).to eq(false)
  end

  it "seach name of crypto" do
    expect(new_hash.fetch("Ethereum")==0).to eq(false)
  end

  it "seach name of crypto" do
    expect(new_hash.fetch("XRP")==0).to eq(false)
  end

end
