import { hong } from "./add.js"
import { pan } from "./startpage.js"

window.onload=function(){
    document.getElementById("jason").innerHTML=pan()
    document.getElementById("check").onclick=function(){
        axios.get("http://localhost/company/check.php")
        .then(res=>{
            let response=res['data'];
            let str;
            switch (response['status']) {
                case 200:
                    let rows=response['result'];
                    str=`<table>`;
                    rows.forEach(element => {
                        str+="<tr>";
                        str+="<td>"+element['name']+"</td>";
                        str+="<td>"+element['title']+"</td>";
                        str+="<td>"+element['telephone']+"</td>";
                        str+="<td>"+element['birth']+"</td>";
                    });
                    str+=`</table>`
                    break;
            
                default:
                    str=response['message']
                    break;
            }  
            document.getElementById("content").innerHTML=str 
        })
        .catch(err=>{
            console.error(err)
        })
    }
    document.getElementById("add").onclick=function(){
        document.getElementById("content").innerHTML=hong()
        document.getElementById("click").onclick=function(){
            let data={
                'name':document.getElementById("name").value,
                'title':document.getElementById("title").value,
                'telephone':document.getElementById("telephone").value,
                'birth':document.getElementById("birth").value,                
            }
            axios.post("http://localhost/company/add.php",Qs.stringify(data))
            .then(res=>{
                let response=res['data'];
                let str=response['message'];
                document.getElementById("content").innerHTML=str
            })
            .catch(err=>{
                document.getElementById("content")=err
            })
        }
    }
}