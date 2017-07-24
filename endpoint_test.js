var system = require('system'); 

var test_url = system.env.BASE_URL

casper.test.begin('Test endpoint has correct body', 1, function(test) {
  casper.start(test_url, function() {
  });

  casper.then(function() {
    test.assertTextExists('Hello, World!');
  });
  casper.run(function() {
    test.done();
  });
});

