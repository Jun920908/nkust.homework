export default function hello(){
    const hi = `
        <input type="text" id="pan">
        <select  id="choice">
            <option value="+">+</option>
            <option value="-">-</option>
            <option value="*">*</option>
            <option value="/">/</option>
        </select>    
        <input type="text" id="hong">
        =
        <div id="ans"></div><br>
        <button id="cal">計算</button>

    `
    return hi
}