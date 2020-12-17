data PugType = PugData
data HuskyType a = HuskyData
data DogueDeBordeaux doge = DogueDeBordeaux doge

myPug = PugData :: PugType

myHusky :: HuskyType a
myHusky = HuskyData

myOtherHusky :: Num a => HuskyType a
myOtherHusky = HuskyData

myOtherOtherHusky :: HuskyType [[[[Int]]]]
myOtherOtherHusky = HuskyData 

myDoge :: DogueDeBordeaux Int
myDoge = DogueDeBordeaux 10 

data Doggies a = 
	Husky a 
	| Mastiff a 
	deriving (Eq, Show) 

