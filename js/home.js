window.onload = function () {
    init();
};

var init = function () {
    
    var tdElements = document.getElementsByTagName("td");
    for (var i = 0; i < tdElements.length; i++) {
        var clickHandler = function(td) {
            return function () {
                window.location.href = "CodeSnippet.aspx?id=" +td.id;
            };
        };

        tdElements[i].onclick = clickHandler(tdElements[i]);
    }
};