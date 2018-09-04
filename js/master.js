window.onload = function () {
    init();
};

var init = function () {
    var logo = document.getElementById("logo");
    //var clickHandler = function() {
    //    return function () {
    //        window.location = "Home.aspx";
    //    };
    //};
    logo.onclick = function () {
        window.location = "Home.aspx";
    };
};