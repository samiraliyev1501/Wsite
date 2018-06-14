
var ExitPanel = document.getElementsByClassName("signoutPanel");

function CixisBtn() {
    for (var i = 0; i < ExitPanel.length; i++) {
        ExitPanel[i].style.display = "block";
        ExitPanel[i].style.opacity = "1";
        ExitPanel[i].style.transition = "all 0.5s";
    }
}
function NoBtn() {
    for (var i = 0; i < ExitPanel.length; i++) {
        ExitPanel[i].style.opacity = "0";
        ExitPanel[i].style.transition = "all 0.5s";
        ExitPanel[i].style.display = "none";
    }
}