var now = new Date();
var hours = (now.getHours() < 10 ? "0" : "") + now.getHours();  // Add leading zero if necessary
var minutes = (now.getMinutes() < 10 ? "0" : "") + now.getMinutes();  // Add leading zero if necessary
document.getElementById("clock").innerHTML = hours + ":" + minutes;

setInterval(function() {
    var now = new Date();
    var hours = (now.getHours() < 10 ? "0" : "") + now.getHours();
    var minutes = (now.getMinutes() < 10 ? "0" : "") + now.getMinutes();
    document.getElementById("clock").innerHTML = hours + ":" + minutes;
}, 10000);

document.getElementById("searchBar").addEventListener("keydown", function(e) {
    if (e.code === "Enter") {
        var query = e.target.value;
        var encodedQuery = encodeURIComponent(query); // Encode the query
        var baseUrl = query === "" ? "https://www.google.com" : `https://www.google.com/search?q=${encodedQuery}`;
        window.location.replace(baseUrl);
    }
});

document.getElementById("searchBar").focus();
document.getElementById("searchBar").select();
