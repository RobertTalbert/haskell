data Price = Price Integer deriving (Eq, Show) 

data Size = Size Integer deriving (Eq, Show)

data Manufacturer = Mini | Mazda | Tata deriving (Eq, Show)

data Airline = PapuAir | CataplutsRUs | TakeYourChancesUnited deriving (Eq, Show)

data Vehicle = Car Manufacturer Price | Plane Airline Size deriving (Eq, Show)

myCar = Car Mini (Price 14000)
urCar = Car Mazda (Price 20000)
clownCar = Car Tata (Price 7000)
doge = Plane PapuAir

isCar :: Vehicle -> Bool
isCar (Car _ _) = True 
isCar _ = False
-- Use pattern matching to determine data type

isPlane :: Vehicle -> Bool
isPlane (Plane _ _) = True
isPlane _ = False

areCars :: [Vehicle] -> Bool
areCars [ ] = True 
areCars (v:vs) = (isCar v) && (areCars vs)

areCars' :: [Vehicle] -> Bool
areCars' = foldr ((&&).isCar) True

getManu :: Vehicle -> Manufacturer
getManu (Car x _) = x 