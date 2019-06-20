const length = 50000

numbers = []
for(let i = 0; i < length; i++) {
    numbers.push(Math.floor(Math.random() * Math.floor(65535)))
}


let temp = 0
for(let i = 0; i < length; i++) {
    for(let j = 0; j < length; j++) {
        if (numbers[j] < numbers[j+1]) {
            temp = numbers[j];
            numbers[j] = numbers[j+1];
            numbers[j+1] = temp;
        }
    }
}

// console.log("done")
