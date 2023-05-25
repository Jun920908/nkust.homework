import hello from "./pan.js";
window.onload=function(){
    document.getElementById("jay").innerHTML=hello()
    document.getElementById("cal").onclick=function(){
        let data = {
            "pan": document.getElementById("pan").value,
            "hong": document.getElementById("hong").value,
            "choice": document.getElementById("choice").value
        };
        axios.post("http://localhost/PHP/index1.php",Qs.stringify(data))
        .then(res => {
            let response = res['data'];
            document.getElementById("ans").innerHTML=response;
        })
        .catch(err => {
            console.error(err); 
        })  
    }
}

    
