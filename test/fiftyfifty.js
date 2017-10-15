var FiftyFifty = artifacts.require("./FiftyFifty.sol");

contract('FiftyFifty', function(accounts) {
  it("should work", function() {
    return FiftyFifty.deployed().then(function(instance) {
      return instance.start(50);
    }).then(function(test) {
      assert.equal(test, "test", "it didn't work");
    });
  });
});
