function setClocks(){
    var now = new Date();
    var id = "clock";
    var hours = preZero(now.getHours());
    var minutes = preZero(now.getMinutes());

    document.getElementById(id).innerHTML = `${hours}:${minutes}`;
}

setClocks();
setInterval(setClocks, 10000)

var inputVal = document.getElementById("searchBar");
inputVal.addEventListener("keydown", function (e) {
    if (e.code === "Enter") {
        var query = e.target.value;

        if (query === "") {
            baseUrl = "https://www.google.com";
        } else {
            baseUrl = `https://www.google.com/search?q=${query}`;
        }
        window.location.replace(baseUrl);
    }
});

document.getElementById("searchBar").focus();
document.getElementById("searchBar").select();
