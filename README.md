# code-ios-swift

## Swift 4 Basic:
https://github.com/dovandu/code-ios-swift/blob/master/swift4_basic.md

## 1: UIStackView
- addArrangedSubview: addview
- oritation: horizontal và vertical
- alignment, distribution, và spacing : căn các view trong
```sh
 alignment: 
 - fill: các view con width = match_parent
 - leading: Căn trái các view con
 - trailing: căn phải các view con
 - center: căn giữa các view con
 
 distribution:
- Fill: 1 subview sẽ tự fill ra bằng với khoảng trống giữa các view. Ở hình trên các button trong stack đang layout theo giá trị fill.
- Fill Equally: các subview sẽ được giãn ra với kích thước bằng nhau.
- Fill Proportionally: đảm bảo các subview sẽ được giãn ra với tỉ lệ bằng nhau. VD: có 2 view A dài 100 và B dài 200, sau khi giãn ra A dài 150 và B là 300. Cả 2 cùng tăng lên 50%.
- Equal Spacing: các subview sẽ giữ nguyên kích thước nhưng cách nhau với 1 khoảng cách bằng nhau.
- Equal Centering: đảm bảo center của mỗi subview sẽ có khoảng cách bằng nhau.

spacing: Chia đều các view con 1 khoảng
```

## 2.Core Graphics Tutorial : https://viblo.asia/p/core-graphics-tutorial-part-1-djeZ1gJ85Wz
```sh 

1.1 CGPoint
1.2 CGSize
1.3 CGRect
1.4 Point vs Pixel
2. CGContext
2.1 CGPath
3. 1 số hàm vẽ cơ bản của CGContext
3.1 CGContextSetLineCap
3.2 CGContextSetLineWidth
3.3 CGContextSetStrokeColorWithColor
3.4 Vẽ đường thẳng
3.5 Vẽ hình chữ nhật (hình vuông)
3.6 Vẽ hình eclipse
3.7 Vẽ hình tròn

```
