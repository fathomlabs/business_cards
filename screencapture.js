var page = require('webpage').create();

page.viewportSize = {
  width: 874,
  height: 378
};

page.onLoadFinished = function(status) {
  console.log('Status: ' + status);
  var filename = "card_" + Date.now().toString() + ".png"
  page.render(filename);
  phantom.exit();
}

page.open('http://localhost:8000/testgen.html', function(status) {
    console.log('Status: ' + status);
});
