remark.macros.scale = function (percentage, frameColor) {
  var url = this;
  return '<img class="photo" src="' + url + '" style="width: ' + percentage + ';border: 7px solid ' + frameColor + ';" alt="photo" />';
};

(function() {
  var links = document.getElementsByTagName('a');
  for (var i = 0; i < links.length; i++) {
    if (/^(https?:)?\/\//.test(links[i].getAttribute('href'))) {
      links[i].target = '_blank';
    }
  }
})();


