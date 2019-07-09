import threading
from functools import wraps

def delay(delay=0):
    def wrap(f):
        @wraps(f)
        def delayed(*args, **kwargs):
            timer = threading.Timer(delay, f, args=args, kwargs=kwargs)
            timer.start()
        return delayed
    return wrap

@delay(3)
def output(x=0):
    print('hello ' + str(x))
print(output)
output(23)

class Timer():
    
    def set_time_out(self, fn, time):
        @delay(time)
        def exec_time_out():
            fn()
        exec_time_out()

timer = Timer()
def some_fn():
    print('Python is not JS')
timer.set_time_out(some_fn, 3)
