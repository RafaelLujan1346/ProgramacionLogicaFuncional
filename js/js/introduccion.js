let x  = [1,2,3,4]
const y = [...x,20,50]
console.log(y)

const edadLegalEEUU = 21
const checkEstado = (edad, edadLegal)=>{
    return edad >= edadLegal ? "Eres mayor" : "Eres menor"
}
const persona = checkEstado (18, edadLegalEEUU)
console.log(persona)

let arreglo =[
    {id:1,name:"luis", age:20},
    {id:2,name:"juan", age:18},
    {id:3,name:"rafa", age:22},
    {id:4,name:"carlos", age:25},
]
let ul =document.getElementById("lista")
var todo = ""
arreglo.forEach((item)=>{
    item.age *= 10
    todo+=  `
        <li>${item.name} - EDAD ${item.age}</li>    
    `
})
ul.innerHTML = todo

console.log("Arreglo original", arreglo)
var copia = arreglo.map((item,index)=>{
    item.age *= 10
    return item
})
console.log("Arreglo modificado", arreglo)
console.log("Arreglo modificado", copia)

let url= "https://thesimpsonsapi.com/api/"
fetch(url+"characters").then(response=>{
    if(!response.ok){
        console.log("Error  en la red")
    }
    return response.json()
}).then(data =>{
    console.log("Datos del personaje", data)
    var lis=""
    data.results.forEach(personaje=>{
       lis+=`
        <li>
        <img src="https://cdn.thesimpsonsapi.com/500${personaje.portrait_path}" width="200px" />
        <h2>${personaje.name}</h2>
        </li>
        `
    })
    ul.innerHTML = lis
})