let numbers = Array();
numbers.push(0);
modified_numbers = Array();
modified_numbers.push(0);

function show() {
    console.log(numbers);
    var res = document.getElementById("show");
    var ans = document.getElementById("result");
    res.innerHTML = "Изначальный массив: ";
    for (i = 0; i < numbers.length; i++) {
        res.innerHTML += numbers[i] + " ";
    }
    ans.innerHTML = "Модифицированный массив: ";
    for (i = 0; i < numbers.length; i++) {
        ans.innerHTML += modified_numbers[i] + " ";
    }
    numbers = modified_numbers.slice();
}

function add() {
    if (numbers[0] == 0) {
        numbers.pop();
        modified_numbers.pop();
    }
    var num = document.getElementById("number").value;
    if (num == "") {
        alert("Wrong input, only numbers!");
    }
    else {
        numbers.push(num);
        modified_numbers.push(num);
    }
}

function find() {
    var sum = 0;
    var size = numbers.length;
    for (i = 0; i < size; i++) {
        num = Number(numbers[i]);
        if (num >= 0) {
            sum += num;
        }
    }
    average = sum / size;
    replace(average);
}

function replace(avg) {
    size = numbers.length;
    index = 0;
    for (i = 0; i < size; i++) {
        if (!(numbers[i] % 7)) {
            index = i;
        }
    }
    modified_numbers[index] = avg;
    show();
}