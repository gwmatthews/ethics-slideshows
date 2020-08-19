remark.macros.scale = function (percentage, frameColor) {
  var url = this;
  return '<img class="photo" src="' + url + '" style="width: ' + percentage + ';border: 7px solid ' + frameColor + ';" alt="photo" />';
};


remark.macros.jump = function (linkText) {
  var url = this;
  return '<a href="' + url + '"target="_blank">' + linkText + '</a>';
}

remark.macros.portrait = function (person, dates, percentage) {
  var url = this;
  return '<div class="center"> <img class="photo" src="' +  url  + '" style="width:' + percentage  + '; border: 4px solid gray;" ><span class="bottomcap">' + person + ' <br> ' + dates +  '</span></div>' ;
  
};

remark.macros.vspace = function (size) {
  return '<div style="height: ' + size + 'px;"><br></div>';
};

remark.macros.colorbox = function (x, y, boxWidth, boxType) {
  var content = this;
  return '<div class="' + boxType + '" style="position: absolute; left:' + x + '; top:' + y + '; width: ' + boxWidth +  ';"><p class="inner">'  + content + '</p></div>';

};

remark.macros.video = function () {
  let source = this;
  return `
  <div class="video">
<iframe width="560" height="315" src="https://www.youtube.com/embed/${source}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen title="YouTube Video"></iframe>
</div>
  `;
};


