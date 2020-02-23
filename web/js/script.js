/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function onLoad(){
    
    
}

function findRoute() {
    const origin = document.getElementById('origin').value;
    const destination = document.getElementById('destination').value;
    let xhr = new XMLHttpRequest();
    xhr.open("POST", "Controll", true);
    xhr.onreadystatechange = function () {
        if (xhr.readyState === 4 && xhr.status === 200) {
               
        }
    };
    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    const aux = "origin=" + origin + "&destiantion=" + destination + "&option=3";
    alert(aux);
    xhr.send(aux);

}

