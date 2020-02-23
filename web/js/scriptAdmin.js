/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function addCityEdges() {
    const cityOrigin = document.getElementById('origin').value;
    const cityDestination = document.getElementById('destination').value;
    const distance = document.getElementById('distance').value;
    let xhr = new XMLHttpRequest();
    xhr.open("POST", "Controll", true);
            xhr.onreadystatechange() = function(){
    if (xhr.readyState == 4 && xhr.status == 200) {
    alert(xhr.responseText);
    }
    }
    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    const aux = "origin=" + cityOrigin + "&destination=" + cityDestination + "&distance=" + distance + "&option=1";
    xhr.send(aux);
}

function addCity() {
    const city = document.getElementById('city').value;
    let xhr = new XMLHttpRequest();
    xhr.open("POST", "Controll", true);
            xhr.onreadystatechange() = function (){
    if (xhr.readyState == 4 && xhr.status == 200) {
    alert(xhr.responseText);
    }
    }
    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    const aux = "city=" + city + "&option=0";
    xhr.send(aux);
}
