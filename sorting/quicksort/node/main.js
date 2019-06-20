const length = 50000

function partition(arr, low, high) { 
    let pivot = arr[high]  
    let i = (low-1)
    for (let j =low; j<high; j++) 
    { 
        if (arr[j] <= pivot) 
        { 
            i++; 

            let temp = arr[i] 
            arr[i] = arr[j] 
            arr[j] = temp 
        } 
    } 

    let temp = arr[i+1]
    arr[i+1] = arr[high] 
    arr[high] = temp

    return i+1
} 


function sort(arr, low, high) 
{ 
    if (low < high) 
    { 
        let pi = partition(arr, low, high)

        sort(arr, low, pi-1) 
        sort(arr, pi+1, high) 
    }

    return arr 
} 


numbers = []
for(let i = 0; i < length; i++) {
    numbers.push(Math.floor(Math.random() * Math.floor(65535)))
}

sort(numbers, 0, length-1)

