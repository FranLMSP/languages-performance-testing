const length = 50000

numbers = []
for(let i = 0; i < length; i++) {
    numbers.push(Math.floor(Math.random() * Math.floor(65535)))
}

numbers.sort((a, b) => a - b)
