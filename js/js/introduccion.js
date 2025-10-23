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
document.querySelector("#Estudiantes").addEventListener('click', (evento) => {
    evento.preventDefault();
    let res = arr_original.filter(item => 
        item.personaje.occupation && 
        item.personaje.occupation.toLowerCase().includes('student')
    );
    imprimir(res);
    console.log("estudiantes:", res);
});
// ...existing code...
document.querySelector("#LinkFecha")?.addEventListener('click', (evento) => {
    evento.preventDefault();
    const cutoff = new Date('1980-02-01');
    const parseDate = s => {
        if (!s) return null;
        s = String(s).trim();
        let m = s.match(/^(\d{4})[-\/](\d{2})[-\/](\d{2})$/); // YYYY-MM-DD or YYYY/MM/DD
        if (m) return new Date(`${m[1]}-${m[2]}-${m[3]}`);
        m = s.match(/^(\d{2})[\/\-](\d{2})[\/\-](\d{4})$/); // DD/MM/YYYY or DD-MM-YYYY
        if (m) return new Date(`${m[3]}-${m[2]}-${m[1]}`);
        const parsed = new Date(s);
        return isNaN(parsed) ? null : parsed;
    };
    const res = arr_original.filter(item => {
        const p = item.personaje || {};
        const raw = p.dateOfBirth || p.birthdate || p.dob || p.birthday || p.birth || p.born;
        const d = parseDate(raw);
        return d && d < cutoff;
    });
    imprimir(res);
    console.log("menores a 1980:", res);
});
// ...existing code...
// Buscar solo por "phrases" (usa un input con id="BuscarFrases")
document.querySelector('#Buscar')?.addEventListener('input', (e) => {
    const q = String(e.target.value || '').trim().toLowerCase();
    if (!q) { imprimir(arr_original); return; }
    const res = arr_original.filter(item => {
        const p = item.personaje || {};
        const phrases = p.phrases;
        if (!phrases) return false;
        if (Array.isArray(phrases)) {
            return phrases.some(ph => String(ph).toLowerCase().includes(q));
        }
        return String(phrases).toLowerCase().includes(q);
    });
    imprimir(res);
});
// ...existing code...
// ...existing code...
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
