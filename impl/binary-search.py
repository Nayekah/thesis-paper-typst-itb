def binary_search(values, target):
    """Return the index of target, or -1 when it is absent."""
    low = 0
    high = len(values) - 1

    while low <= high:
        middle = (low + high) // 2
        candidate = values[middle]

        if candidate == target:
            return middle
        if candidate < target:
            low = middle + 1
        else:
            high = middle - 1

    return -1

