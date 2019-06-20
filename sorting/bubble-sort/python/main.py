import random

if __name__ == '__main__':
    length = 50000
    numbers = [random.randrange(65565) for i in range(length)]

    temp = 0
    for i in range(length):
        for j in range(length - 1):
            if numbers[j] < numbers[j+1]:
                temp = numbers[j]
                numbers[j] = numbers[j+1]
                numbers[j+1] = temp

    # print('done')
