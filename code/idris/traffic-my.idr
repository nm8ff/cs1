module TrafficLight

data TrafficLight = red | green | amber

changeLight: TrafficLight -> TrafficLight
changeLight red = green
changeLight green = amber
changeLight amber = red

