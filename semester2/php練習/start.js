import { hong } from "./pan.js";
import startpage from "./startpage.js"
window.onload = function () {
    document.getElementById("me").innerHTML = startpage()
    document.getElementById("insert").onclick = function () {
        document.getElementById("content").innerHTML=hong()
        document.getElementById("cal").onclick = function () {
            let data={
                'id':document.getElementById("id").value,
                'name':document.getElementById("name").value,
                'addr':document.getElementById("addr").value,
                'birth':document.getElementById("birth").value,
            };
            axios.post("http://localhost/php練習/start1.php",Qs.stringify(data))
            .then(res => {
                let response = res['data'];
                let str = response['message'];
                document.getElementById("content").innerHTML = str;
            })
            .catch(err => {
                document.getElementById("content") = err; 
            })
        }
    };
    document.getElementById("check").onclick = function () {
        axios.get("http://localhost/php練習/start.php")
            .then(res => {
                let response = res['data'];
                let str;
                switch (response['status']) {
                    case 200:
                        let rows = response['result'];
                        str = `<table>`;
                        rows.forEach(element => {
                            str += "<tr>";
                            str += "<td>" + element['id'] + "</td>";
                            str += "<td>" + element['name'] + "</td>";
                            str += "<td>" + element['addr'] + "</td>";
                            str += "<td>" + element['birth'] + "</td>";
                            str += "</tr>";
                        });
                        str += `</table>`;

                        break;  
                    default:
                        str = response['message'];
                        break;
                }
                document.getElementById("content").innerHTML = str;
            })
            .catch(err => {
                console.error(err);
            })
    }
}
