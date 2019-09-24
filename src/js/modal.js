$(document).ready(function(){



// Затемнение
var backdrop = document.querySelector(".backdrop");
// Затемнение

// Местоположение
var choseLocation = document.getElementById("choose-location");
var locationForm = document.getElementById("location-form");
var locationRadio = document.querySelector("#set-location");
var locationCityInput = document.querySelector("#city-field");

chooseLocation.onclick = function() {
    backdrop.style.display = "block";
    locationForm.style.display = "block";
}
backdrop.onclick = function() {
    backdrop.style.display = "none";
    locationForm.style.display = "none";
}
locationRadio.onchange = function (event) {
    if (event.target.checked) {
        locationCityInput.focus();
    }
}
// Местоположение

// Войти
var loginLink = document.getElementById("login-link");
var loginForm = document.querySelector(".login-block");

loginLink.onclick = function() {
    backdrop.style.display = "block";
    loginForm.style.display = "block";
}
backdrop.onclick = function() {
    backdrop.style.display = "none";
    loginForm.style.display = "none";
}
// Войти

// Регистрация
// Регистрация

});