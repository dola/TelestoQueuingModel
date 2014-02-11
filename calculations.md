# Model Parameters

## Raw Data

    Cronus:~ simon$ python -m telesto.plot.aggregate /Users/simon/Desktop/data.bak/raw/reference/allclients.log 
    # mean(packet) dev(packet) mean(message) dev(message) mean(response_time) dev(response_time) confidence(95% on message) relative_confidence(95% on message)
    2498 240 927 95 10156291 15594882 7.81277844574 0.00842802421331
    Cronus:~ simon$ python -m telesto.plot.phases /Users/simon/Desktop/data.bak/raw/reference/middleware/middleware.log 
    # waiting database response parsing
    2608845 8010677 22387 14047 # mean
    24.4825053707 75.1755825568 0.210089080698 0.131822991762 # relative
    45091472 8684529 617727 413511 # dev
    Cronus:~ simon$ 

    Total Time in Middleware:
    sum(2608845 8010677 22387 14047) = 10655956 = 10.655 ms


## Time
Client:     
Network:            3.3ms / 2 = 1.65 ms
Dispatcher:         
Workers (Receive):  14047   = 0.014 ms  
Workers (Send):     22387   = 0.022 ms 
Database:           8010677 = 8.011 ms



10.16 ms - ()




