const $gcdForm = document.getElementById("gcd");
const $ans = document.getElementById("ans");

$gcdForm.onsubmit = async function (e) {
    e.preventDefault();

    const response = await fetch("./gcd.php", {
        body: new FormData(this),
        method: "POST"
    });

    $ans.value = await response.json();
}