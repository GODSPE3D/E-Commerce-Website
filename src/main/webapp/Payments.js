function display(c) {
    if (c.value == "1") {
        document.getElementById('Credit').style.visibility='visible';
        document.getElementById('Online').style.visibility='hidden';
        document.getElementById('COD').style.visibility='hidden';
    }
    else if (c.value == "2") {
        document.getElementById('Credit').style.visibility='hidden';
        document.getElementById('Online').style.visibility='visible';
        document.getElementById('COD').style.visibility='hidden';
    }
    else if (c.value == "3") {
        document.getElementById('Credit').style.visibility='hidden';
        document.getElementById('Online').style.visibility='hidden';
        document.getElementById('COD').style.visibility='visible';
    }
    else document.getElementById('ifCred').style.visibility='hidden';
}