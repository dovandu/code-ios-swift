# code-ios-swift

# Danh mục

* [Bài 1](#bai-1:-bien)
* [Bài 2](#bài-2:-các-toán-tử-cơ-bản-trong-swift)

## Bai 1: Bien
- 1:
```javascript
	let = "constant"
```
*example*
```javascript
	let pi =. 2.456
	pi = 346 // error
```
- 2:

```javascript
	var = "variable" khai báo biến
```
*example*
```javascript
	var abc = "abc", name = "Doan van Du", gmail = = "123@gmail.com"
	var x, y, z : Double
```
- 3: typealias: Bí danh
```javascript
 	typealias BigNumber = Double
 	let numberOfAnts: BigNumber = 1000_000_000 // 1000 000 000
 ```
 - 4: nil == null
 ```javascript 
 	var numberOfAnts : Int? = 10. // thêm dấu ? để sủ dụng gán nil
 	numberOfAnts = nil
 ```
- 5 : assert (dk, thông báo lỗi nếu đk ko đúng) , precondition (dk, thông báo lỗi nếu đk ko đúng) ==> break or return
```javascript
	var numberOfAnts = -10
	assert (numberOfAnts >=0, "đầu vào phải lớn hơn hoặc bằng 0")
	precondition(numberOfAnts >0, "đầu vào phải lớn hơn hoặc bằng 0")
	var x1 = 100 // not run with precondition
```
## Bài 2: Các toán tử cơ bản trong Swift


- 1: Unary operator
```javascript
	let ijavascriptero:Bool = true
	let check = !ijavascriptero // Unary operator : false
```

- 2: Tuple: Danh sách các biến
```javascript
	let (width, height) = (800, 600)
```
- 3: So sánh 2 tuple:
```javascript
	(3, "cat") == (3, "cat") // true
```

- 4: for:
```javascript
	for index in 1..<5 {
    print("index = \(index)")
   }
```

- 5: if ... else
```javascript
	if (5 < 1 || 3 < 2) {
    	print("true !")
	} else {
    	print("false")
	}
```
- 6: range ...
```javascript
  let range = ...7 // tất cả những số nhỏ hơn 7
  range.contains(6) // true
```
- 7: array:

```javascript
	let animals = ["cat", "dog", "tiger", "dinosaur"]

	for animal in animals[...2] {
   		 print("animal = \(animal)") // in từng phần tử của mảng
	}

```






