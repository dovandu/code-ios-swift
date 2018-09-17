# code-ios-swift

# Danh mục

* [Bài 1: Biến](#Bài-1:-Biến)
* [Bài 2: Các toán tử cơ bản trong Swift](#Bài-2:-Các-toán-tử-cơ-bản-trong-Swift)

## Bài 1: Biến
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
## Bài 2: Các toán tử cơ bản trong Swift

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






