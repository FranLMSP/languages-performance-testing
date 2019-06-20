import random

def partition(arr, low, high):
    pivot = arr[high]  
    i = low-1
    for j in range(low, high):
        if arr[j] <= pivot:
            i+=1
            temp = arr[i] 
            arr[i] = arr[j] 
            arr[j] = temp 

    temp = arr[i+1]
    arr[i+1] = arr[high] 
    arr[high] = temp

    return i+1

def sort(arr, low, high):
    if low < high:
        pi = partition(arr, low, high)

        sort(arr, low, pi-1) 
        sort(arr, pi+1, high)

    return arr 


if __name__ == '__main__':
    length = 50000
    numbers = [random.randrange(65535) for i in range(length)]

    sort(numbers, 0, length-1)
