import random

if __name__ == '__main__':
    length = 50000
    numbers = [random.randrange(65565) for i in range(length)]
    numbers.sort()

    # print('done')
