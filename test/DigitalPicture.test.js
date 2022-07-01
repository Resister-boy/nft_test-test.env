const DigitalPicture = artifacts.require("DigitalPicture");

contract("DigitalPicture", async function (accounts) {
  const [owner] = accounts;

  beforeEach(async function() {
    this.token = await DigitalPicture.new();
  });

  it("publish token", async function() {
    const tokenId = await this.token.publishToken(owner, "http://dev.sample.com/a/b/abc.jpg");
    console.log(tokenId);
  });

})