# test_math_functions.py

def add(x, y):
    return x + y

def subtract(x, y):
    return x - y

def test_add():
    assert add(2, 3) == 5
    assert add(1, -1) == 0
    assert add(-2, -3) == -5

def test_subtract():
    assert subtract(5, 3) == 2
    assert subtract(1, 1) == 0
    assert subtract(-2, -3) == 1

# Additional test cases can be added as needed
