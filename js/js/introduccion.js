var ul = document.getElementById("lista")
let url= "https://thesimpsonsapi.com/api/"
let arr_original =[]
var lis=""
var getLista = (page)=>{
    fetch(url+"characters?page="+page).then(response=>{
        if(!response.ok){
            console.log("Error  en la red")
        }
        return response.json()
    }).then(data =>{
       

        data.results.forEach(personaje=>{
            arr_original.push({
                personaje:personaje,datos:null
            })
        lis+=`
            <li>
            <img src="https://cdn.thesimpsonsapi.com/500${personaje.portrait_path}" width="200px" />
            <h2>${personaje.name}</h2>
            </li>
            `
        })
        ul.innerHTML = lis
        
    })
}
for(let i=1;i<=5;i++){
    getLista(i)
}
setTimeout(()=>{
    document.getElementById("preload").style.display ="none"
},3000)
const imprimir = (arr)=>{
    var todo="";
    arr.forEach(item=>{
        todo+=`
            <li>
            <img src="https://cdn.thesimpsonsapi.com/500${item.personaje.portrait_path}" width="200px" />
            <h2>${item.personaje.name}</h2>
            </li>
            `
    })
    ul.innerHTML=todo
}
document.querySelector("#mostrarTodo").addEventListener('click',(evento)=>{
    evento.preventDefault()
    imprimir(arr_original)
    console.log("Arreglo todo", arr_original)
})
//edad menor que <18
document.querySelector("#LinkEdad").addEventListener('click',(evento)=>{
    //evitar recarga de pagina
    evento.preventDefault()
    let res = arr_original.filter((item)=>item.personaje.age < 18 && item.personaje.age != null)
    console.log("EDAD", res)
    console.log("arreglo menores de edad", arr_original)
})
document.querySelector("#LinkMuertos").addEventListener('click',(evento)=>{
    evento.preventDefault()
    let res = arr_original.filter((item)=>item.personaje.status == "Deceased")
    console.log("Estado", res)
    imprimir(res)
    console.log("arreglo muertos", arr_original)
})
document.querySelector("#LinkPromedio").addEventListener('click', (evento) => {
    evento.preventDefault();
    let res = arr_original.filter((item)=>item.personaje.age != null)
    const ValorInicial = 0;
    const sumWithInitial = res.reduce(
        (accumulator, currentValue) => accumulator + currentValue.personaje.age,ValorInicial);
    alert("El promedio es: " + (sumWithInitial/res.length));

});
document.querySelector("#LinkEdadAsc").addEventListener('click', (evento) => {
    evento.preventDefault();
    let res = arr_original.filter(item => item.personaje.age != null);

    res.sort((a, b) => a.personaje.age - b.personaje.age);
    imprimir(res);
    console.log("arrglo edad asc", arr_original)
});
document.querySelector("#ViejoJoven").addEventListener('click', (evento) => {
    evento.preventDefault();
    let res = arr_original.filter(item => item.personaje.age != null);
    res.sort((a, b) => a.personaje.age - b.personaje.age);
    imprimir(res);console.log("arreglo viejo joven", arr_original)
});
/*
    Muertos
    Menores de edad
    promedio de edad
    ordenar por edad asendente
    mas viejo y el mas joven al mismo tiempo
    los que son estudiantes
    mostrar los itemes que la fecha de nacimiento sea < 1980/02/01
    El buscador de buscar por frases
*/
