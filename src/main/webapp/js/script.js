let circle = document.querySelector(".abc");

let content = document.querySelector(".content");
content.addEventListener("click",()=>{
    content.classList.toggle("lineThrough");
    circle.classList.toggle("ri-checkbox-circle-line");
})