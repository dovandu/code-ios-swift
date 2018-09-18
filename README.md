# code-ios-swift

# Danh mục

* [Bài 1: Biến](#bài1)
* [Bài 2: Các toán tử cơ bản trong Swift](#bài2)
* [Bài 3: Làm việc với String và character trong Swift-phần 1](#bài3)
* [Bài 4: Dữ liệu kiểu mảng](#bài4)
* [Bài 5: Kiểu dữ liệu tập hợp, kiểu Set](#bài5)
* [Bài 6: Kiểu dữ liệu Dictionary](#bài6)
* [Bài 7: Điều khiển luồng dữ liệu](#bài7)
* [Bài 8: Khai báo và thực thi hàm(function)](#bài8)
* [Bài 9: Tìm hiểu về Closures](#bài9)
* [Bài 10: Kiểu dữ liệu Enum](#bài10)
* [Bài 11: Struct và Class](#bài11)
* [Bài 12: Thuộc tính](#bài12)
* [Bài 13: Phương thức](#bài13)
* [Bài 14: Sử dụng subscript (ký hiệu)](#bài14)
* [Bài 15: Kế thừa (Inheritance)](#bài15)
* [Bài 16: Khởi tạo đối tượng (Initialization)](#bài16)
* [Bài 17: Huỷ và giải phóng đối tượng](#bài17)
* [Bài 18: Làm việc với biến và đối tượng nil](#bài18)
* [Bài 19: Ép kiểu](#bài19)
* [Bài 20: Nested types : Nồng các kiểu vào nhau](#bài20)
* [Bài 21: Quản lý bộ nhớ với ARC(Automatic Reference Counting) : Quản lý bộ nhớ tự động](#bài21)
* [Bài 22: Sử dụng Extensions](#bài22)
* [Bài 23: Cơ bản về Protocol == abstact](#bài23)
* [Bài 24: Sử dụng protocol và delegate](#bài24)
* [Bài 25: Sử dụng Generics: Đại diện cho 1 loại object](#bài25)
* [Bài 26: Các toán tử nâng cao](#bài26)
* [Bài 27: Access control](#bài27)


## Bài1
### Bài 1: Các kiểu biến

- 1:
```swift
	let = "constant"
```
*example*
```swift
	let pi =. 2.456
	pi = 346 // error
```
- 2:

```swift
	var = "variable" khai báo biến
```

*example*
```swift
	var abc = "abc", name = "Doan van Du", gmail = = "123@gmail.com"
	var x, y, z : Double
```
- 3: typealias: Bí danh
```swift
 	typealias BigNumber = Double
 	let numberOfAnts: BigNumber = 1000_000_000 // 1000 000 000
 ```
 - 4: nil == null
 ```swift 
 	var numberOfAnts : Int? = 10. // thêm dấu ? để sủ dụng gán nil
 	numberOfAnts = nil
 ```
- 5 : assert (dk, thông báo lỗi nếu đk ko đúng) , precondition (dk, thông báo lỗi nếu đk ko đúng) ==> break or return
```swift
	var numberOfAnts = -10
	assert (numberOfAnts >=0, "đầu vào phải lớn hơn hoặc bằng 0")
	precondition(numberOfAnts >0, "đầu vào phải lớn hơn hoặc bằng 0")
	var x1 = 100 // not run with precondition
```

## Bài2
### Bài 2: Các toán tử cơ bản trong Swift

- 1: Unary operator
```swift
	let iswiftero:Bool = true
	let check = !iswiftero // Unary operator : false
```

- 2: Tuple: Danh sách các biến
```swift
	let (width, height) = (800, 600)
```
- 3: So sánh 2 tuple:
```swift
	(3, "cat") == (3, "cat") // true
```

- 4: for:
```swift
	for index in 1..<5 {
    print("index = \(index)")
   }
```

- 5: if ... else
```swift
	if (5 < 1 || 3 < 2) {
    	print("true !")
	} else {
    	print("false")
	}
```
- 6: range ...
```swift
  let range = ...7 // tất cả những số nhỏ hơn 7
  range.contains(6) // true
```
- 7: array:

```swift
	let animals = ["cat", "dog", "tiger", "dinosaur"]

	for animal in animals[...2] {
   		 print("animal = \(animal)") // in từng phần tử của mảng
	}

```
## Bài3
### Bài 3: Làm việc với String và character trong Swift-phần 1

- 1: String chứa nhiều dòng và nhiều ký tự đặc biệt

```swift
	let welcome = """
  		This is my tutorial channel.
		"How long have you done this ?". "4 months"
		This is a 3 quotes \"\"\" // thêm 3 dấu nháy
	"""
```

- 2: Khởi tạo và kiểm tra chuỗ rỗng:

```swift

	let aBlankString = String()
	print(aBlankString)
	if (aBlankString.isEmpty == true) {
	    print("It is empty")
	}
```
- 3: Check từng ký tự:

```swift
	for eachCharacter in aMutableString {
	    print("character:           \(eachCharacter)")
	}

	// hoặc

	for index in welcomeString.indices {
    print("eachCharacter = \(welcomeString[index])")
	}
```
- 4: append: công thêm ký tự vào cuối chuỗi

```swift
	let dollarMark: Character = "$"
	aMutableString.append(dollarMark)
	print(aMutableString)
```
- 5: 
```swift
	let width = 500
	let squareArea = "The square area is \(width * width)"
	print(squareArea) // string được tạo ra có tính toán
```
- 6: Sử dụng emoji: 

https://unicode-table.com/en/#000C

```swift
	let ampersandMark = "\u{2602}"
	print(ampersandMark)
```
 - 7: Lấy ký tự trong chuỗi

 ```swift
 	var welcomeString = "Hello World!"
	print(welcomeString[welcomeString.index(welcomeString.startIndex, offsetBy: 4)])
```

- 8: Thêm ký tự vào 1 vị trí nào đó

```swift
	welcomeString.insert("A", at: welcomeString.endIndex)

	// chèn vào tại vị trí trước vị trí cuối cùng

	welcomeString.insert(contentsOf: "AAAA", at: welcomeString.index(before: welcomeString.endIndex))
	print(welcomeString)
```

- 9: So sánh 2 string

```swift
	let myLove1 = "I love you"
	let myLove2 = "I love you"

	if myLove1 == myLove2 {
	    print("Content are equal")
	}
```

- 10 check dk:

```swift
	let stringWithPrefix = "mr Hoang makes this video"
	stringWithPrefix.hasPrefix("mr Hoang1") // chứa ký tự đầu tiên

	let stringWithPostfix = "mr Hoang likes StAr War"
	stringWithPostfix.hasSuffix("Star War") // chứa ký tự cuối cùng
	stringWithPostfix.uppercased().hasSuffix("STAR WAR") // chứa ký tự vị trí bất kỳ ko phân biệt chưa hoa hay thường

```

## Bài4
### Bài 4: Dữ liệu kiểu mảng

```swift
	var someDoubles = [Double]() // khởi tạo mảng rỗng
	someDoubles.append(100.02)  // thêm phần tử
	someDoubles.append(3.2)
	print("number of elements = \(someDoubles.count)") // count: số lượng phần tử

	var tenIntegers = Array(repeating: 5, count: 10) // tạo ra mảng có 10 số 5

	var result1 = tenIntegers + tenIntegers  // cộng 2 mảng với nhau


	var smartPhones = ["iphone", "samsum galaxy", "htc one"]
	smartPhones += ["nokia", "blackberry"]  // cộng mảng
	smartPhones.insert("Xaomi", at: 1) //chèn thêm phần tử vào vị trí thứ nhất
	smartPhones.remove(at: 1)  // xoá bỏ phần tử thứ nhất


	for smartPhone in smartPhones {
    print("each smartphone = \(smartPhone)") // duyệt từng phần tử mảng
	}

	for (index, value) in smartPhones.enumerated() {
	    print("index = \(index), value = \(value)") // duyệt từng phần tử và vị trí của mảng
	}

```

## Bài5
### Bài 5: Kiểu dữ liệu tập hợp, kiểu Set

- 1: 

```swift
	var starWarCharacters: Set<String> = ["Anakin Skywalker", "Luke", "Yoda"]

	if(starWarCharacters.isEmpty){ // check empty
	    print("No characters")
	} else {
	    print("There are \(starWarCharacters.count) characters"). // số phần tử
	}
	starWarCharacters.insert("Leia")  // thêm phần tử
	starWarCharacters.remove("Luke")  // xoá phần tử
	print(starWarCharacters)

	if starWarCharacters.contains("Finn") { // kiểm tra có hay ko phần tử
	    print("List contains Finn")
	} else {
	    print("List does not contain Finn")
	}

	for starWarCharacter in starWarCharacters { // duyệt phần tử
	    print("starWarCharacter = \(starWarCharacter)")
	}
```
- 2: Giao, hợp,  hiệu, ... trong tập hợp

```swift
	let set1: Set = [1, 2,  3, 4, 5,  6,  7]
	let set2: Set = [9, 10, 3, 4, 11, 12, 13]

	let resultSet = set1.intersection(set2) // lấy giao giữa 2 mảng
	let resultSet = set1.union(set2)  // hợp giữa 2 phần tử
	let resultSet = set1.subtracting(set2)  // hiệu của 2 tập hợp
	let resultSet = set1.symmetricDifference(set2)  // lấy những phần tử có trong 1 mà ko có trong 2
```
- 3:

```swift
	let fruits:Set = ["🍎","🥝","🍆","🍇","🍒"]
	let fruitAndDrinks:Set = ["🍎","🥝","🍆","🍇","🍒", "🍺","☕️","🍷"]
	let animals: Set = ["🐇","🐊","🐴","🐓"]
	fruitAndDrinks.isSuperset(of: fruits) // kiểm tra có phải là tập hợp cha ko
	fruits.isSubset(of: fruitAndDrinks)  // kiểm tra có phải là tập hợp con ko

	fruits.isDisjoint(with: animals) // khác nhau hoàn toàn
```

## Bài6
### Bài 6: Kiểu dữ liệu Dictionary 

```swift
	var user:[String: String] = ["name": "hoang", "email": "sunlight4d@gmail.com"]
	var myNumbers:[Int: String] = [10: "ten", 123: "one hundred and twelve"]
	print(myNumbers[124]) // lấy value theo key

	print("user dictionary has \(user.count) keys")  // đểm có tổng số bao nhiều key

	user["email"] = "hoang123@gmail.com" // c1: gán giá trị mới

	if let oldEmail = user.updateValue("hoang1234@gmail.com", forKey: "email") {
	    print("old email = \(oldEmail)")  // c2: gán giá trị mới
	}

	user = [:] // xoá hết dữ liệu

	if user.isEmpty {
	    print("user dictionary is empty")
	} else {
	    print("user dictionary is not empty")
	}

	print(user["email"])

	for (myKey, myValue) in user {  // duyệt theo key và value
	    print("key = \(myKey), value = \(myValue)")
	}

	for eachKey in user.keys {  // duyệt theo key
	    print("each key = \(eachKey)")
	}
	for eachValue in user.values {  // duyệt theo value
	    print("each value = \(eachValue)")
	}

	let allKeys = [String](user.keys)  // mảng chứa key thôi
	print("all keys = \(allKeys)")

	let allValues = [String](user.values)  // mảng chứa value thôi
	print("all values = \(allValues)")
```

## Bài7
### Bài 7: Điều khiển luồng dữ liệu

- 1: for

```swift
	for index in 0..<10 {
	//    print("index = \(index)")
	//    print("hello !")
	}

// nếu index ko sử dụng

	for _ in 0..<10 {  // 0-9
	//    print("index = \(index)")
	//    print("hello !")
	}

	for index in stride(from: 1, to: 12, by: 1) {  // buy: bước đi từ 1 -12 
	//    print("index =\(index)")
	}
```
- 2: while

```swift
	// cú pháp 1

	var startValue = 0

	while startValue < 100 {
	    print("startValue = \(startValue)")
	    startValue = startValue + 1
	    if(startValue ==5){
	    	continue // tiếp tục vòng lặp mới
	    	break // thoát hẳn ra khoỉ vòng lặp
	    }
	   print("startValue = \(startValue)") 
	}


	// cú pháp 2

	repeat {
	 	print("startValue = \(startValue)")
	 	startValue = startValue + 1
	 } while startValue < 100
```
- 3: switch...case

```swift

	// th1

	 var yourPoint = -2
	 var estimation:String
	 
	 switch yourPoint {
	 	case 0..<2:
	 		estimation = "very bad"
	 	case 2..<5:
	 		estimation = "under average"
	 	case 5..<7:
	 		estimation = "average"
	 	case 7..<9:
	 		estimation = "Good"
	 	case 9...10:
	 		estimation = "Exellent"
	 	default:
	 		estimation = "Not a valid value"
	 }
	 
	 print("estimation = \(estimation)")

	 //th2

	 let starWarCharacter = "Nguyen Duc Hoang"
	switch starWarCharacter {
		case "Yoda", "Obiwan-Kenoby", "Mace Windu":
	    	print("\(starWarCharacter) is a Jedi")
		case "Darth Sidious", "Anakin Skywalker", "Darth Maul":
	    	print("\(starWarCharacter) is in Dark Side of the Force")
		case "Nguyen Duc Hoang":
	    	print("\(starWarCharacter) is a freelancer")
	    	fallthrough  // đi tiếp, ko break
		default:
	    	print("\(starWarCharacter) is not a Star War's character")
	}

```

## Bài8
### Bài 8: Khai báo và thực thi hàm(function)

- 1: cơ bản

```swift
	func sum2Numbers(a: Int, b: Int) -> Int { // return int
	//    let c = a + b
	    return a + b
	}

	func sayHello() {
    	print("Hello, how are you ?")
	}
```

- 2: Function return multiple values

```swift
	func calculateSumAndMultiply(a: Double, b: Double) -> (sum: Double, multiply: Double)? {
	    let result = (a + b, a * b)
	    return result
	}

	// bắt trường hợp nil

	if let result1 = calculateSumAndMultiply(a: 10, b: 20) {
    print("result1 = \(result1)")
	} else {
	    print("result is nil")
	}
```

- 3: Function ko cần tên biến 

```swift
	func multiply2Numbers(_ a: Float, _ b: Float) -> Float{
	    return a * b
	}

	print("Multiply without parameter names : \(multiply2Numbers(120, 30))")

	// default value

	func getRectangleArea(width: Double, height: Double = 100) -> Double {
	    return width * height
	}

	print("Area of the rectangle is: \(getRectangleArea(width: 10.0))")

	// ko giới hạn params truyền vào
	func sumMultipleNumbers(_ numbers: Double...) -> Double {
	    var total: Double = 0.0
	    for number in numbers {
	        total = total + number
	    }
	    return total
	}

	print("Total numbers = \(sumMultipleNumbers(1, 2))")
``` 
- 4: 

```swift
	var aString = "I am a man"
	print("String before: \(aString)")
	func inoutFunction(_ a: inout String) { // inout : biến a có thể thay đổi
	    a = "I am a hero"
	}
	inoutFunction(&aString)
	print("String after: \(aString)")
```
- 5: Nested functions: Hàm trong hàm

```swift
	func showGreeting() {
	    func showHello() {
	        print("Hello everybody !")
	    }
	    func showAQuestion() {
	        print("How about your work ?")
	    }
	    showHello()
	    showAQuestion()
	}

	showGreeting()
```

## Bài9
### Bài 9: Tìm hiểu về Closures

- 1:

```swift
	var starWarCharacters = ["Leia Organa","Anakin Skywalker", "Luke Skywalker", "Ray", "R2-D2", "Qui-won"]

	func handleSort(s1: String, s2: String) -> Bool {
	    return s1 < s2
	}

	var sortedStarWarCharacters = starWarCharacters.sorted(by: handleSort)
	print("sortedStarWarCharacters = \(sortedStarWarCharacters)")

	// example 1: map của mảng

	let someNumbers = [1,2,3,4,5,6]

	var squaredNumbers = someNumbers.map { (someNumber) -> Int in
	    return someNumber * someNumber
	}
	print("squaredNumbers = \(squaredNumbers)")

	// example 2: 

	var strings = someNumbers.map { (someNumber) -> String in
    	return "\(someNumber) points"
	}
	print("strings = \(strings)")


```

- 2:

```swift
	// @escaping : fix lỗi responseString và responseStr là khác biệt nhau
	func doTask1(completionHandler:  @escaping(_ responseString: String,_ errorCode: Int) -> Void) { 
	    print("do task 1")
	    completionHandler("success", 200)
	}
	doTask1 { (responseStr, errCode) in
	    print("This task do after task1. ResponseString = \(responseStr), errorCode = \(errCode)")
	}

	let doAHardWork = {
    	print("This is a hard work")
	}
	let anotherHardWork = doAHardWork
	print("Do task A")
	anotherHardWork()
```

- 3:

```swift
	// @autoclosure: tự động convert params thành closure
	func doSomeWork(hardWork: @autoclosure() -> Void) {
	    print("before autoclosure")
	    hardWork()
	}
	doSomeWork(hardWork: print("I do hard work. I am inside autoclosure"))
```

## Bài10
### Bài 10 : Kiểu dữ liệu Enum

- 1: Định nghĩa 1

```swift
	enum Level {
	//    case low
	//    case medium
	//    case high
	    case low,medium, high
	}

	// sử dụng

	//var myLevel = Level.high //ok
	var myLevel:Level = .high
	switch myLevel {
	case .high:
	    print("It is high level")
	case .medium:
	    print("It is medium level")
	case .low:
	    print("It is low level")
	default:
	    print("Not a level")
	}
```
- 2: Định nghĩa 2

```swift
	enum AppleDevice {
	    case appleWatch(String, UIColor)
	    case iphone(Float, UIColor)
	}
	//var myDevice: AppleDevice = .appleWatch("sport 38mm", UIColor.green)
	var myDevice = AppleDevice.iphone(10.3, UIColor.gray)
	switch myDevice {
	case let .appleWatch(name, color):
	    print("my device is Apple Watch with name = \(name), color: \(color)")
	case let .iphone(iosVersion, color):
	    print("my device is Iphone with ios version = \(iosVersion), color: \(color)")
	default:
	    print("Not apple watch or iphone !")
	}
		//var myDevice: AppleDevice = .appleWatch("sport 38mm", UIColor.green)
		var myDevice = AppleDevice.iphone(10.3, UIColor.gray)
		switch myDevice {
		case let .appleWatch(name, color):
		    print("my device is Apple Watch with name = \(name), color: \(color)")
		case let .iphone(iosVersion, color):
		    print("my device is Iphone with ios version = \(iosVersion), color: \(color)")
		default:
		    print("Not apple watch or iphone !")
		}
```

- 3: Định nghĩa 3:

```swift
	enum AnimalIcons: Character {
	    case ant = "🐜"
	    case optopus = "🦑"
	    case pig = "🐖"
	}
	print("optopus icon is : \(AnimalIcons.optopus.rawValue)")
	enum Direction:Int {
	    case up = 1
	    case down = 2
	    case left = 3
	    case right = 4
	}

	print("Raw value of Left is : \(Direction.left.rawValue)")
```

## Bài11
### Bài 11: Struct và Class

- 1: Định nghĩa class và structor

```swift
	struct Shape {
	    var width:Float = 0.0
	    var height = 0.0
	}
	//var aShape = Shape()
	var aShape = Shape(width: 120.0, height: 130.0) // khởi tạo với params truyền vào
	//aShape.width = 102  // thay đổi giá trị của thuộc tính
	var shape2 = aShape
	print("shape's width = \(aShape.width)")
	//print("shape's height = \(aShape.height)")
	shape2.width = 1000
	print("shape2's width = \(shape2.width)")

```
- 2: 

```swift
	class User {
	    var name = ""
	    var universityName:String?
	    var myBookShape = Shape(width:297,height: 210)
	}
	var user1 = User()
	var user2 = user1
	var user3 = User()

	if (user2 === user1) {
	    print("user2 is identical to user1")
	}
	if (user3 === user1) {
	    print("user3 is identical to user1")
	} else {
	    print("user3 is in different memory location with user1")
	}
	print("myBook height = \(user1.myBookShape.height)")
	print("myBook width = \(user1.myBookShape.width)")
```

## Bài12
### Bài 12: Thuộc tính

- 1: Ví dụ 1

```swift
	struct Patient {
	    var name: String
	    let yearOfBirth: Int
	}
	var aPatient = Patient(name: "Alex",yearOfBirth: 1992)
	aPatient.name = "Anderson"
	//aPatient.yearOfBirth = 1993 // error vì thuộc tính là let = constant
```

- 2: Ví dụ 2

```swift
	class MovieManager {
	    lazy var getOneMovieName:String = { // chạy khi đc gọi đến
	        print("do hard work...")
	        return "Star War"
	    }()
	}
	let manager = MovieManager()
	print("get 1 movie : \(manager.getOneMovieName)")
	manager
```

- 3: Ví dụ 3

```swift
	struct Calculation {
	    var x: Double
	    var squaredX: Double {
	        get {
	            return x * x
	        }
	        set {
	            print("new value = \(newValue)")
	            x = sqrt(newValue)
	        }
	    }
	    var cubeX:Double {
	        return x * x * x  // read only
	    }
	    var step:Int = 0 {
	        willSet(newStep) {
	            print("1. Before set value : \(newStep)") // gọi giá trị trc khi đc set
	        }
	        didSet {
	            print("2. After set value: \(step), old value: \(oldValue)")  // gọi khi gán xong giá trị
	        }
	    }
	}
	var calculation = Calculation(x: 10, step: 1)
	print("squared = \(calculation.squaredX)") // get
	calculation.squaredX = 256.0  // set
	print("x now = \(calculation.x)")
	calculation.cubeX
	//calculation.cubeX = 1000
	calculation.step = 123 // (123 = newStep)
```

- 4: Ví dụ 4

```swift
	class Computation {
	    static var title = "This is Calculation class"
	    static let pi: Float = 3.1416
	    class var squaredPi: Float {
	        return pi * pi
	    }
	}
	print("title = \(Computation.title)")
	Computation.pi
	Computation.squaredPi
```	

## Bài13
### Bài 13: Phương thức

- 1: 

```swift
	class Point {
	    var x:CGFloat = 0.0
	    var y:CGFloat = 0.0
	    var color: UIColor = UIColor.green
	    
	    func moveTo(x: CGFloat, y: CGFloat, color: UIColor) {
	        self.x = x  // self = this
	        self.y = y
	        self.color = color
	    }
	    
	    func toString() -> String {
	        return "x = \(self.x), y = \(self.y), color = \(self.color.description)" // description: mặc định là có
	    }
	    
	    func moveAndCreateNewPoint(x: CGFloat, y: CGFloat, color: UIColor) -> Point {
	        let newPoint = Point()
	        newPoint.moveTo(x: x, y: y, color: color)
	        return newPoint
	    }
	}

	var myPoint = Point()
	myPoint.moveTo(x: 10, y: 20, color: UIColor.red)
	print(myPoint.toString())
	var newPoint = myPoint.moveAndCreateNewPoint(x: 200, y: 300, color: UIColor.yellow)
	if myPoint !== newPoint {
	    print("myPoint and newPoint are different")
	}

```

- 2:

```swift
	enum Compass {
	    case east, west, south, north
	    mutating func moveToNext() {
	        switch self {
	        case .east:
	            self = .west
	        case .west:
	            self = .south
	        case .south:
	            self = .north
	        case .north:
	            self = .east
	        }
	    }
	}

	var compass1 = Compass.east
	compass1.moveToNext()
	print(compass1)
	compass1.moveToNext()
	print(compass1)
```

- 3:

```swift
	class Calculator {
	    static let pi:Float = 3.1416
	    static func sum2Numbers(a: Int, b: Int) -> Int {
	        return a + b
	    }
	    class func circleArea(radius: Float) -> Float {
	        return pi * radius * radius
	    }
	}
	print("sum 5 + 2 = \(Calculator.sum2Numbers(a: 5, b: 2))")
	print("circle area = \(Calculator.circleArea(radius: 20))")
```

## Bài14
### Bài 14: Sử dụng subscript (ký hiệu)

- 1:

```swift
	struct MultiplicationTable {
	    let multiplier: Int
	    subscript(index: Int) -> Int {
	        return multiplier * index
	    }
	}

	let mt = MultiplicationTable(multiplier: 4)
	
	for i in 1...10 {
	    print("\(i) multiplies by 4 is : \(mt[i])")  // cách gọi subscript => mt[i]
	}
	 

	mt[2] = 100 // error , get only
```

- 2:

```swift
	struct AnimalMatrix {
	    var animals = [
	        ["🐜", "🐙", "🐊", "🐎", "🐖"],
	        ["🐢", "🐍", "🦋", "🦀", "🐿"],
	        ["🐌", "🐚", "🐳", "🐒"]
	    ];
	    subscript(row: Int, column: Int) -> String {
	        get {
	            assert(animals[row][column] != nil, "No animal found")
	            return animals[row][column]
	        }
	        set {
	            assert(animals[row][column] != nil, "Cannot set animal value because it is out of range")
	            animals[row][column] = newValue
	        }
	    }
	}

	var am = AnimalMatrix()
	print(am[2, 3])
	am[0, 0] = "xyz"
	print("am = \(am)")
```


## Bài15
### Bài 15: Kế thừa

```swift
	class Animal {
	    var name: String = ""
	    func eat() {
	        print("Animal is eating...")
	    }
	    var description: String {
	        return "This is an animal named: \(self.name)"
	    }
	}

	class Cat: Animal {
	    var canClimb: Bool = true
	    func sayMeomeo() {
	        print("I am saying meo meo")
	    }
	    
	    override func eat() {
	        super.eat()
	        print("Cat is eating ...")
	    }
	    
	    override var description: String {
	        return "Cat's name is: \(super.description), can climb = \(self.canClimb)" // truy xuất vào thuộc tính lớp cha
	    }
	}
	let animal = Animal()
	var myCat = Cat()
	myCat.name = "Mina"
	myCat.eat()
	print(myCat.description)

	//myCat.description = "This is meomeo"
```

## Bài16
### Bài 16: Khởi tạo đối tượng (Initialization)

- 1

```swift
	// ví dụ 1
	struct Point {
	    var x = 20.0
	    var y = 30.0
	}
	var p = Point()
	print("Point detail: x = \(p.x), y = \(p.y)")

	// ví dụ 2

	struct Energy {
	    var calories: Float
	    init(fromCalories calories: Float) { // fromCalories: nhãn của hàm init
	        self.calories = calories
	    }
	    init(fromJoules joules: Float) {
	        self.calories = 0.000239006 * joules
	    }
	    //    Initializer Parameters Without Argument Labels : ko cần nhãn
	    init(_ joules: Float) {
	        self.calories = 0.000239006 * joules
	    }
	}
	let energy1 = Energy(fromCalories: 110.0)
	print("energy1.calories = \(energy1.calories)")
	let energy2 = Energy(fromJoules: 200.0)
	print("energy2.calories = \(energy2.calories)")
```

- 2:

```swift
	class Customer {
	    var fullName: String
	    var age: Int? //Optional Property Types
	    init(fullName: String) {
	        self.fullName = fullName
	    }
	    func description(){
	        print(self.fullName)
	    }
	}
	let customer = Customer(fullName: "Nguyen Duc Hoang")
	customer.description()
```

- 3:

```swift
	class Person {
	    var name: String
	    init(name: String) {
	        self.name = name
	    }
	    
	    convenience init() {  // được phép gọi các hàm init ở trong cùng 1 class
	        self.init(name: "no name")
	    }
	}

	class Employee: Person {
	    var staffNumber: String
	    init(name: String, staffNumber: String) {
	        self.staffNumber = staffNumber //call this line first
	        super.init(name: name)
	    }
	    
	    convenience override init(name: String) {  // chỉ được gọi hàm init của chính nó
	        self.init(name: name, staffNumber: "0000")
	    }
	}
	//init() can return nil => Failable Initializers. Example:
```

- 4:

```swift
	enum Sex {
	    case male, female, other
	    init?(sexCharacter: Character) { // hàm khởi tạo đc phép nil
	        switch sexCharacter {
	        case "M":
	            self = .male
	        case "F":
	            self = .female
	        case "O":
	            self = .other
	        default:
	            return nil
	        }
	    }
	}
	let sexCharacter1 = Sex(sexCharacter: "M")
	let sexCharacter2 = Sex(sexCharacter: "A")
	//Failable Initializers for Enumerations with Raw Values
	enum Rank: String {
	    case bad = "bad", medium = "medium", good = "good", excellent = "excellent"
	}
	let rank1 = Rank(rawValue: "excellent")
	let rank2 = Rank(rawValue: "any rank...")
	//Setting a Default Property Value with a Closure or Function
```

- 5

```swift
	//Setting a Default Property Value with a Closure or Function
	class MainView: UIView {
		// ko phải dùng hàm init mà khởi tạo ngay trong các thuộc tính của Closure
	    var leftLabel: UILabel = {
	        let label = UILabel()
	        label.textColor = UIColor.green
	        label.text = "This is an example text"
	        return label
	    }()
	}
	let mainView = MainView()
	print(mainView.leftLabel.text)
```

## Bài17
### Bài 17: Huỷ và giải phóng đối tượng
//Deinitialization for custom classes : Áp dụng trong class
- 1

```swift
	class Stock {
	    static var coinsInStock = 20_000 // điểm trong kho
	    static func distribute(coins: Int) -> Int { // xuất điểm trong kho ra
	        let numberOfDistributedCoins = min(coins, coinsInStock) // đủ điểm thì xuất
	        coinsInStock = coinsInStock - numberOfDistributedCoins
	        return numberOfDistributedCoins  // có bao nhiêu thì xuất bấy nhiêu
	    }
	    static func receive(coins: Int) { // khi ko chơi nữa thì điểm đc trả về trong kho
	        coinsInStock += coins
	    }
	}

	class GamePlayer {
	    var existingCoins: Int
	    init(coins: Int) { // khởi tạo
	        existingCoins = Stock.distribute(coins: coins)
	    }
	    func win(coins: Int){ // thắng
	        existingCoins += Stock.distribute(coins: coins)
	    }
	    
	    deinit { // huỷ
	        print("Deinit...")
	        Stock.receive(coins: existingCoins)
	    }
	}
	var player: GamePlayer? = GamePlayer(coins: 1200)
	print("Existing coins = \(player?.existingCoins)")
	player!.win(coins: 150)
	print("There are now \(Stock.coinsInStock) coins left in the bank")
	player = nil // deinit được gọi
	print("There are now \(Stock.coinsInStock) coins left in the bank")

```

## Bài18
### Bài 18: Làm việc với biến và đối tượng nil

- 1:

```swift
	class User {
	    var name: String
	    var readingBook: Book?
	    init(name: String) {
	        self.name = name
	    }
	}
	class Book {
	    var numberOfPages = 1000
	}
	var mrHoang = User(name: "Nguyen Duc Hoang")
	mrHoang.readingBook = Book()
	if let numberOfPages = mrHoang.readingBook?.numberOfPages {
	    print("Book of \(mrHoang.name) has \(numberOfPages) pages.")
	} else  {
	    print("Failed to get number of pages")
	}
```
- 2:

```swift
	class Address {
	    var buildingName: String?
	    var buildingNumber: String?
	    var street: String?
	    func detailAddress() -> String? {
	        if let buildingName = buildingName, let buildingNumber = buildingNumber, let street = street {
	            return "\(buildingName) \(buildingNumber) \(street)"
	        } else {
	            return nil
	        }
	    }
	}
	let address = Address()
	address.buildingName = "Sunrise Building"
	address.buildingNumber = "A1234"
	address.street = "Acacia Road"

	if let detailAddress = address.detailAddress() {
	    print(detailAddress)
	} else {
	    print("Cannot get detail address")
	}
	 
	/*
	if address.detailAddress() != nil {
	    print(address.detailAddress())
	} else {
	    print("Cannot get detail address")
	}
	*/
	var testScores = [
	                    "Hoang": [60, 70, 80],
	                    "Alex": [79, 94, 81]
	                ]
	//testScores["Hoang"]?[0] = 99
	//testScores["Alex"]?[0] += 1
	testScores["Hoang1234"]?[0] = 99
	print(testScores)
```

## Bài19
### Bài 19: Ép kiểu

```swift
	class MediaItem {
	    var name: String
	    init(name: String) {
	        self.name = name
	    }
	}
	class Song:MediaItem {
	    var artist: String
	    init(name: String, artist: String) {
	        self.artist = artist
	        super.init(name: name)
	    }
	}
	class Movie: MediaItem {
	    var director: String
	    init(name: String, director: String) {
	        self.director = director
	        super.init(name: name)
	    }
	}
	let mediaLists: [MediaItem] = [
	    Movie(name: "Star Wars", director: "George Lucas"),
	    Movie(name: "Interstellar", director: "Christopher Nolan."),
	    Movie(name: "The Matrix", director: " Lana Wachowski"),
	    Song(name: "A Hard Day's Night", artist: "The Beatles"),
	    Song(name: "All Of Me", artist: "John Legend"),
	]
	var numberOfMovies = 0
	var numberOfSongs = 0
	for eachMedia in mediaLists {
	    if eachMedia is Song {
	        numberOfSongs += 1
	    } else if eachMedia is Movie {
	        numberOfMovies += 1
	    }
	}
	print("numberOfMovies = \(numberOfMovies)")
	print("numberOfSongs = \(numberOfSongs)")
	for eachMedia in mediaLists {
	    if let movie = eachMedia as? Movie {
	        //Downcasting
	        print("Movie: \(movie.name), director: \(movie.director)")
	    } else if let song = eachMedia as? Song {
	        print("Song: \(song.name), artist:  \(song.artist)")
	    }
	}
	//Type Casting for Any and AnyObject
	var things = [Any]()// An array of any object
	things.append(100)
	things.append(200.0)
	things.append(M_PI) //mathematic PI
	things.append("Star Wars")
	things.append((1.0, 3.0)) //a tuple
	things.append(Song(name: "Love story", artist: "Taylor Swift")) //an object
	things.append({ (name: String) -> String in "Hello, \(name)" }) //a closure
	for thing in things {
	    switch thing {
	    case let anInteger as Int:
	        print("An int value: \(anInteger)")
	    case let aDouble as Double where aDouble > 0:
	        print("A double, value: \(aDouble), positive!")
	    case let aString as String:
	        print("This is a string. Value: \(aString)")
	    case let (x, y) as (Double, Double):
	        print("This is a tuple with x = \(x), y = \(y)")
	    case let aSong as Song:
	        print("A song with name: \(aSong.name), artist: \(aSong.artist)")
	    case let stringInClosure as (String) -> String:
	        print("stringInClosure = \(stringInClosure("Hoang"))")
	    default:
	        print("somethin else")
	    }
	}
```

## Bài20
### Bài 20: Nested types : Nồng các kiểu vào nhau

```swift
	struct Fruit {
	    enum RedFruit:Character {
	        case apple = "🍎", strawberry = "🍓", watermelon = "🍉", chiliPepper = "🌶"
	        enum Size: Int {
	            case small = 1, medium, big
	        }
	    }
	    var myFruit: RedFruit?
	    var myFruitSize: RedFruit.Size?
	    var description:String {
	        return "myFruit = \(myFruit?.rawValue), size = \(myFruitSize?.rawValue)"
	    }
	}

	print(Fruit.RedFruit.strawberry.rawValue)
	print(Fruit.RedFruit.Size.big.rawValue)

	var fruit = Fruit()
	fruit.myFruit = Fruit.RedFruit.chiliPepper
	fruit.myFruitSize = Fruit.RedFruit.Size.small
	//print("fruit detail = \(fruit)")
	print(fruit.description)
```

## Bài21
### Bài 21: Quản lý bộ nhớ với ARC(Automatic Reference Counting) : Quản lý bộ nhớ tự động

- 1

```swift
	class Customer {
	    let name: String
	    init(name: String) {
	        self.name = name
	        print("\(self.name) is being initialized")
	    }
	    deinit {
	        print("\(self.name) is being deinitialized")
	    }
	    var house:House?
	}

	var customer1: Customer? // 
	var customer2: Customer?
	var customer3: Customer?
	customer1 = Customer(name: "Nguyen Duc Hoang")
	customer2 = customer1
	customer3 = customer1
	customer1 = nil
	customer2 = nil
	customer3 = nil
```

- 2

```swift
	class House {
	    var address: String
	    init(address: String) {
	        self.address = address
	    }
	    weak var author: Customer?
	    deinit {
	        print(" House at: \(address) is being deinitialized")
	    }
	}
	var mrHoang:Customer?
	var hisHouse:House?
	mrHoang = Customer(name: "Nguyen Duc Hoang")
	hisHouse = House(address: "45 Maihuong, Hai Ba Trung district, Hanoi, Vietnam")
	mrHoang!.house = hisHouse
	hisHouse!.author = mrHoang
	mrHoang = nil
	hisHouse = nil
```

- 3

```swift
	class User {
	    let name: String
	    var card: CreditCard?
	    init(name: String) {
	        self.name = name
	    }
	    deinit {
	        print("User: \(name) is being deinitialized")
	    }
	}

	class CreditCard {
	    let number: UInt64
	    unowned var user: User
	    init(number: UInt64, user: User) {
	        self.number = number
	        self.user = user
	    }
	    deinit { print("Card #\(number) is being deinitialized") }
	}

	var mrAlex:User?
	var creditCard:CreditCard?

	mrAlex = User(name: "Alex")
	creditCard = CreditCard(number: 1234_5678_9012_3456, user:mrAlex!)
	mrAlex!.card = creditCard
	mrAlex = nil
```

## Bài22
### Bài 22: Sử dụng Extensions: Thêm các thuộc tính tính toàn, phương thức vào object sẵn có mà ko phải kế thừa

```swift
	extension Double {
	    var meter: Double {
	        return self
	    }
	    var kilometer: Double {
	        return self * 1000.0
	    }
	    var centimeter: Double {
	        return self / 100.0
	    }
	    var milimeter: Double {
	        return self / 1000.0
	    }
	}
	let aDistance = 42.0.kilometer + 192.0.meter + 12345.0.centimeter + 256897.3.milimeter
	print("aDistance = \(aDistance.meter) meters")
	//Extend Initializers
	struct Point {
	    var x: Double
	    var y: Double
	}
	extension Point {
	    init(xValue: Double, yValue: Double) {
	        self.x = xValue
	        self.y = yValue
	    }
	}
	let myPoint = Point(xValue: 21.2, yValue: 22.2)
	print("myPoint = \(myPoint)")
	//Extend a static method
	extension UIColor {
	    static func rgba(_ red: CGFloat, _ green: CGFloat, _ blue: CGFloat, _ alpha: CGFloat) -> UIColor {
	        return UIColor(red: red / 255.0, green: green / 255.0, blue: blue / 255.0, alpha: alpha)
	    }
	}
	//let myColor = UIColor.rgba(red: 250, green: 128, blue: 144, alpha: 1)
	let myColor = UIColor.rgba(250, 128, 144, 1)
	print("myColor = \(myColor)")
	struct Rectangle {
	    var width, height: Double
	}
	//Extend an instance method
	extension Rectangle {
	    func calculateArea() -> Double {
	        return self.width * self.height
	    }
	}
	let rectangle = Rectangle(width: 100.0, height: 200.0)
	print("calculateArea = \(rectangle.calculateArea())")
	//Extend mutating Instance Methods
	extension Double {
	    mutating func square(){
	        self = self * self //mutating method = method that change "self"
	    }
	}
	var someDouble = 123.6
	someDouble.square()
```

## Bài23
### Bài 23: Cơ bản về Protocol == abstact
#### Định nghĩa hàm, thuộc tính trong Protocol. Bất kỳ class nào khai báo sử dụng protocol đó thì phải khai báo thực thi các hàm đc định nghĩa trong nó

```swift
	protocol DetailInformationProtocol {
	    //    Property Requirements
	    var fullName: String { get }
	    //Method Requirements
	    func showDetail() -> String
	}
	//Example of a class "conforms a protocol"
	class User: DetailInformationProtocol {
	    var firstName: String
	    var lastName: String
	    init(firstName: String, lastName: String) {
	        self.firstName = firstName
	        self.lastName = lastName
	    }
	    //must implement property in Protocol
	    var fullName: String {
	        return firstName + lastName
	    }
	    func showDetail() -> String {
	        return "Firstname = \(firstName), lastName = \(lastName)"
	    }
	}
	var mrHoang = User(firstName: "Nguyen", lastName: "Duc Hoang")
	//Example of "Mutating Method Requirements"
	protocol TogglableProtocol {
	    //Mutating Method Requirements
	    mutating func toggle()
	}
	enum Switcher: TogglableProtocol {
	    case on, off
	    mutating func toggle() {
	        switch self {
	        case .off:
	            self = .on
	        case .on:
	            self = .off
	        }
	    }
	}
	var lightSwitch = Switcher.off
	lightSwitch.toggle()
	lightSwitch.toggle()
	//Initializer Requirements
	protocol InitializationProtocol {
	    init(name: String)
	}
	class Animal {
	    
	}
	//class Bird inherited from Animal and conforms protocol InitializationProtocol
	class Bird: Animal,InitializationProtocol {
	    var name: String
	    required init(name: String) {
	        self.name = name
	    }
	}
	let aBird = Bird(name: "Kiki")
```

## Bài24
### Bài 24: Sử dụng protocol và delegate

```swift
	protocol ExampleDelegate {
	    func method1()
	}
	//Delegation enables a class or structure to delegate some of its responsibilities to an instance of another type
	//Class that have delegate property
	// Delegation trao quyền cho đối tường nào đấy thực hiện 1 chức năng nào đó
	// kiểu kiểu như public
	class ExampleClass {
	    var delegate: ExampleDelegate?
	    func reloadData() {
	        print("running reload data...")
	        print("do some tasks in 1 seconds...")
	        delegate?.method1()
	        print("do some tasks in 3 seconds...")
	        
	    }
	}

	class ClassConformDelegate: ExampleDelegate {
	    var aProperty: ExampleClass
	    init(aProperty: ExampleClass) {
	        self.aProperty = aProperty
	        self.aProperty.delegate = self
	        self.aProperty.reloadData()
	    }
	    
	}
	//Adding Protocol Conformance with an Extension
	extension ClassConformDelegate {
	    //Implement delegate functions
	    func method1() {
	        print("ClassConformDelegate calls method1")
	    }
	}

	let a = ClassConformDelegate(aProperty: ExampleClass())

	protocol TextRepresentable {
	    var textualDescription: String {get}
	}
	class Animal:TextRepresentable {
	    var name: String
	    init(name: String) {
	        self.name = name
	    }
	    
	}
	extension Animal {
	    var textualDescription: String {
	        return "This is an Animal"
	    }
	}
	//Optional Protocol Requirements
	@objc protocol ExampleProtocol {
	    @objc optional func method3()
	    @objc optional var property3: Int { get }
	}
	class AnExampleClass: ExampleProtocol {
	    //No need to implement method3 or property3
	}
```

## Bài25
### Bài 25: Sử dụng Generics: Đại diện cho 1 loại object

```swift
	//Swift’s Array and Dictionary types are both generic collections
	//Swap 2 integers

	func swap2Ints(_ a: inout Int, _ b: inout Int) {
	    let temp = a
	    a = b
	    b = temp
	}
	var x = 33
	var y = 44
	swap2Ints(&x, &y)
	print("x is now \(x), and y is now \(y)")
	 
	//T = placeholder type name
	func swap2Values<T>(_ a: inout T, _ b: inout T) {
	    let temp = a
	    a = b
	    b = temp
	}
	var string1 = "str1"
	var string2 = "str2"
	swap2Values(&string1, &string2)
	print("string1 is now \(string1), and string2 is now \(string2)")
	//Define Stack struct with type "Element" or "T"
	struct Stack<T> {
	    var items = [T]()
	    //mutating => because they need to modify/mutate the structure’s items array
	    mutating func push(_ item: T) {
	        items.append(item)
	    }
	    mutating func pop() -> T? {
	        return items.count == 0 ? nil : items.removeLast()
	    }
	}
	var integerStack = Stack<Int>()
	integerStack.push(1)
	integerStack.push(2)
	integerStack.push(3)
	integerStack.push(4)
	print("integerStack = \(integerStack)")
	integerStack.pop()
	print("integerStack = \(integerStack)")
	//Type Constraint => type parameter’s name + type parameter list
	//Equatable => it is guaranteed to support the equal to operator
	func findIndex<T: Equatable>(of valueToFind: T, in array:[T]) -> Int? {
	    for (index, value) in array.enumerated() {
	        if value == valueToFind {
	            return index
	        }
	    }
	    return nil
	}
	let intIndex = findIndex(of: 11, in: [10, 11, 12])
	let stringIndex = findIndex(of: "Hoang", in: ["Alex", "Peter", "Mary"])
	//Associated Types
	protocol Container {
	    associatedtype T
	    mutating func append(_ item: T)
	    var count: Int { get }
	}

	struct IntStack: Container {
	    // original IntStack implementation
	    var items = [Int]()
	    mutating func push(_ item: Int) {
	        items.append(item)
	    }
	    mutating func pop() -> Int {
	        return items.removeLast()
	    }
	    // conformance to the Container protocol
	    typealias T = Int
	    mutating func append(_ item: T) {
	        self.push(item)
	    }
	    var count: Int {
	        return items.count
	    }
	    
	}

```

## Bài26
### Bài 26: Các toán tử nâng cao

```swift
	extension UInt8 {
	    func printDetail(varName: String) {
	        print("\(varName) details: Value = \(self), bit value = \(String(self, radix: 2))")
	    }
	}
	let numberInBits: UInt8 = 0b11001111
	let invertedNumberInBits = ~numberInBits
	invertedNumberInBits.printDetail(varName: "invertedNumberInBits")
	let firstBits: UInt8 =   0b11111001
	let secondBits: UInt8  = 0b00111111
	//XOR                      11000110
	//OR                       11111111
	//AND                      00111001
	let firstAndSecondBits = firstBits & secondBits
	firstAndSecondBits.printDetail(varName: "firstAndSecondBits")
	//OR
	let firstOrSecondBits = firstBits | secondBits
	firstOrSecondBits.printDetail(varName: "firstOrSecondBits")
	//exclusive OR operator = XOR
	let firstXORSecondBits = firstBits ^ secondBits
	firstXORSecondBits.printDetail(varName: "firstXORSecondBits")
	let shiftBits: UInt8 = 0b00000100
	//left shift             00001000
	//left shift 2              10000
	shiftBits.printDetail(varName: "shiftBits")
	let shift1 = shiftBits << 1 //To left
	shift1.printDetail(varName: "shift1")
	let shift2 = shiftBits << 2
	shift2.printDetail(varName: "shift2")
	//Overflow Operators
	var maxInt32 = Int32.max
	print("maxInt32 = \(maxInt32)") // = 2^32 / 2 - 1
	//maxInt32 = maxInt32 + 1
	maxInt32 = maxInt32 &+ 3
	print("maxInt32 = \(maxInt32)")
	//Int32's range: -2147483648, -2147483647, -2147483646,... 2147483646, 2147483647
	var minInt32 = Int32.min
	print("minInt32 = \(minInt32)") // = 2^32 / 2 - 1
	//minInt32 = minInt32 - 1 //error
	minInt32 = minInt32 &- 2
	print("minInt32 = \(minInt32)")
	//Precedence and Associativity
	var anExpression = 5 + ((7 % 8) * 5) //Precedence: "%, *, / operator" = first, "+, - operator" = second,
	//remainder: 7 % 8 = 7
	print("anExpression = \(anExpression)")
	//Operator Methods
	// "+ operator" is an infix operator. Ex: a + b
	struct Vector3D {
	    var x = 0.0, y = 0.0, z = 0.0
	}
	extension Vector3D {
	    static func + (v1: Vector3D, v2: Vector3D) -> Vector3D {
	        return Vector3D(x: v1.x + v2.x, y: v1.y + v2.y, z: v1.z + v2.z)
	    }
	    //unary operators. Example: +a, -b
	    static prefix func - (vector: Vector3D) -> Vector3D {
	        return Vector3D(x: -vector.x, y: -vector.y, z: -vector.z)
	    }
	    static func == (v1: Vector3D, v2: Vector3D) -> Bool {
	        return (v1.x == v2.x) && (v1.y == v2.y) && (v1.z == v2.z)
	    }
	}
	let vector1 = Vector3D(x: 1.0, y: 2.0, z: 3.0)
	let vector2 = Vector3D(x: 4.0, y: 5.0, z: 6.0)
	var sum = vector1 + vector2
	print("sum = \(sum)")
	//unary operators. Example: +a, -b
	print("vector1 = \(vector1)")
	var vector3 = -vector1
	print("vector3 = \(vector3)")

	var vectorA = Vector3D(x: 1.0, y: 2.0, z: 3.0)
	var vectorB = Vector3D(x: 1.0, y: 2.0, z: 3.0)
	if vectorA == vectorB {
	    print("2 vectors are equivalent")
	}
```

## Bài27
### Bài 27: Access control

https://github.com/sunlight3d/Swift4Tutorial/tree/master/Swift%204%20tutorial-28-Access%20control
