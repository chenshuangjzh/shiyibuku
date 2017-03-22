$(function(){
    $("#times").click(function(){
        var currentMilliseconds = new Date().getMilliseconds();
        Cookies.set("requestBegin",currentMilliseconds,{expires : 1});
        var locationArray = window.location.href.split("/");
        var targetLocation = locationArray[0] + "//" + locationArray[2] + "/" + locationArray[3] + "/";
        window.location.href = targetLocation + "times/running";
    });

    $(".dropdown-toggle").dropdown();
});