const splash = document.querySelector(".splash");

document.addEventListener("DOMContentLoaded", (e) => {
    setTimeout(() => {
        splash.classList.add("display-none");
    }, 2000)
})

const spinner = document.querySelector(".spinner");

document.addEventListener("DOMContentLoaded", (s) => {
    setTimeout(() => {
        spinner.classList.remove("spinner");
    }, 2000)
})

function toggleForm() {
    let container = document.querySelector(".container");
    container.classList.toggle("active");
}

window.addEventListener("scroll", function() {
    let header = document.querySelector("header");
    header.classList.toggle("sticky", window.scrollY > 0);
})

function openSidebar(event) {
    const sidebar = document.querySelector(".sidebar");
    sidebar.classList.add("open");
    event.stopPropagation();
}

function closeSidebar() {
    const sidebar = document.querySelector(".sidebar");
    sidebar.classList.remove("open");
}
n = new Date();
y = n.getFullYear();
m = n.getMonth() + 1;
d = n.getDate();
document.getElementById("date").innerHTML = m + "/" + d + "/" + y;