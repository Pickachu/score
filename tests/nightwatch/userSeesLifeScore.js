var acceptance;

acceptance = {

  "User can see main life score": function(client) {
    return client.url("http://127.0.0.1:3000")
      .waitForElementVisible("body", 1000)
      .assert
      .containsText("Life Score:")
      .end();
  }
  
};

module.exports = acceptance;
