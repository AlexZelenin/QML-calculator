
function setTime(seconds) {
    time = seconds
}

function isInt(n) {
    return n % 1 === 0;
}

function checkStr(in_s) {

    if (!isInt(in_s)) {
        console.log("in if")
        var i = 0

        while (i == 0) {
            if (in_s.slice(-1) === "0" || in_s.slice(-1) === ".") {
                in_s = in_s.slice(0, -1)
            }
            else {
                i = 1
            }
        }
    }

    return in_s
}

function setTypeW(ins) {
    typeWork = ins
}

function clearTypeW() {
    typeWork = 0
}

function setArg1(ins) {
    arg1 = ins
}

function setArg2(ins) {
    arg2 = ins
}

function setText(ins) {
    btn_text += ins
}

function clearText() {
    btn_text = ""
}

function clearResult() {
    result = ""
}

function backspaceText() {
    root.btn_text = root.btn_text.slice(0, -1)
}

function requestLog(arg1, arg2, type) {
    root.clrlog = "<div><font color=\"#47A76A\">Запрос: " + arg1 + " " + type + " " + arg2 + "</font></div><br>" + root.clrlog
}

function resultLog(result) {
    root.clrlog = "<div><font color=\"#4285B4\">Результат: " + result + "</font></div><br>" + root.clrlog
}

function errorLog(error) {
    root.clrlog = "<div><font color=\"red\">Ошибка: " + error + "</font></div><br>" + root.clrlog
}
