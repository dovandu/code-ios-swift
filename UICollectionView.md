
```swift
//AppDelegate.swift
 var window: UIWindow?

func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let mainViewController = MainViewController()
        let navigationController = UINavigationController(rootViewController: mainViewController)
        navigationController.isNavigationBarHidden = true
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        return true
    }
//FoodData.swift

import Foundation
var foodData:[Food] = [
    Food(imageName: "cream-tea", foodName: "Cream Tea", foodDescription: "This is a cup of cream tea",
         imageURL: "http://Nguyens-iMac:3001/open_image?image_name=upload_91af2c0a6afcc3b0e9d424b4836fb7c3.jpg"),
    Food(imageName: "japanese-salad", foodName: "Japanese Salad", foodDescription: "Very delicious Japanese Salad",
         imageURL: "http://Nguyens-iMac:3001/open_image?image_name=upload_a7581c9be1d5f4985ec5d89c18aaacbe.jpg"),
    Food(imageName: "kimchi", foodName: "Korean Kimchi", foodDescription: "Traditional Korean Food",
         imageURL: "http://Nguyens-iMac:3001/open_image?image_name=upload_8b819390b4b4c6978e2f27d1b0f92411.JPG"),
    Food(imageName: "mushroom", foodName: "Fresh mushroom", foodDescription: "Fresh mushroom with vegetables",
         imageURL: "http://Nguyens-iMac:3001/open_image?image_name=upload_86c3bc2c7d4359e11a90849075f0c851.jpg"),
    Food(imageName: "oysters", foodName: "Oysters", foodDescription: "Oysters with ice rock",
         imageURL: "http://Nguyens-iMac:3001/open_image?image_name=upload_d3d5aede2e3042c43b7b19bc791c100d.jpg"),
    Food(imageName: "http://salad-mushroom", foodName: "Multiple salad", foodDescription: "Salad mixed with mushroom",
         imageURL: "http://Nguyens-iMac:3001/open_image?image_name=upload_86c3bc2c7d4359e11a90849075f0c851.jpg"),
    Food(imageName: "vegetable", foodName: "Vegetable", foodDescription: "Fresh vegetables",
         imageURL: "http://Nguyens-iMac:3001/open_image?image_name=upload_7c0f8421f6b42056bfdf24120d81e698.JPG")
]

//Food.swift
import Foundation
import UIKit

struct Food {
    var imageName: String?
    var foodName: String?
    var foodDescription: String?
    var imageURL: String?
}

//UIImageView+Extensions.swift

import Foundation
import UIKit
extension UIImageView {
    public func getImageFromURL(urlString: String) {
        URLSession.shared.dataTask(with: NSURL(string: urlString)! as URL, completionHandler: { (data, response, error) -> Void in
            if error != nil {
                print(error!)
                return
            }
            DispatchQueue.main.async(execute: { () -> Void in
                let image = UIImage(data: data!)
                self.image = image
            })
        }).resume()
    }
}

//FoodCollectionCell.swift

import UIKit

class FoodCollectionCell: UICollectionViewCell {
    var stackView: UIStackView = UIStackView()
    var imageView: UIImageView = UIImageView()
    var labelFoodName: UILabel = UILabel()
    var labelFoodDescription: UILabel = UILabel()
    
    func autolayoutCell() {
        self.backgroundColor = .white
        self.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        stackView.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        //autolayout imageView
        stackView.addArrangedSubview(imageView)
        imageView.image = #imageLiteral(resourceName: "kimchi")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.heightAnchor.constraint(equalTo: stackView.heightAnchor, multiplier: 2.0/3.0).isActive = true
        //autolayout labelFoodName
        labelFoodName.translatesAutoresizingMaskIntoConstraints = false
        labelFoodName.text = "Food name"
        labelFoodName.font = UIFont.boldSystemFont(ofSize: 15)
        stackView.addArrangedSubview(labelFoodName)
        //autolayout labelFoodDescription
        labelFoodDescription.translatesAutoresizingMaskIntoConstraints = false
        labelFoodDescription.text = "Food description"
        labelFoodDescription.font = UIFont.systemFont(ofSize: 15)
        stackView.addArrangedSubview(labelFoodDescription)
        //stackView setting
        stackView.axis = .vertical
        stackView.alignment = .leading
        stackView.distribution = .equalSpacing
        stackView.spacing = 10
    }
    var food: Food! {
        didSet {
            //imageView.image = UIImage(named: food.imageName!)
            imageView.getImageFromURL(urlString: food.imageURL  ?? "")
            labelFoodName.text = food.foodName ?? ""
            labelFoodDescription.text = food.foodDescription ?? ""
        }
    }
}

// MainViewController.swift
import UIKit

class MainViewController: UIViewController,
    UICollectionViewDelegate,
    UICollectionViewDataSource,
    UICollectionViewDelegateFlowLayout
{
    var collectionView: UICollectionView?
    let cellId = "ExampleCell"
    let cellSpacing:CGFloat = 10
    //read data
    var foods: [Food] = foodData
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewLayout())
        collectionView?.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(collectionView!)
        collectionView?.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        collectionView?.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        collectionView?.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        collectionView?.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        collectionView?.backgroundColor = .white
        //collectionView settings
        let collectionViewFlowLayout = UICollectionViewFlowLayout()
        collectionView?.setCollectionViewLayout(collectionViewFlowLayout, animated: true)
        collectionViewFlowLayout.scrollDirection = .vertical
        collectionViewFlowLayout.sectionInset = UIEdgeInsets(top: 0, left: cellSpacing, bottom: 0, right: cellSpacing)
        collectionViewFlowLayout.minimumInteritemSpacing = 10
        collectionViewFlowLayout.minimumLineSpacing = 10
        
        collectionView?.register(FoodCollectionCell.self, forCellWithReuseIdentifier: cellId)
        collectionView?.delegate = self
        collectionView?.dataSource = self
    }
    //UICollectionViewDataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return foods.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)  as! FoodCollectionCell
//        cell.backgroundColor = indexPath.row % 2 == 0 ? .cyan: .orange
//        cell.selectedBackgroundView = UIView()
//        cell.selectedBackgroundView?.backgroundColor = .red
        cell.autolayoutCell()
        cell.food = foods[indexPath.row]
        return cell
    }
    //UICollectionViewDelegateFlowLayout
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (UIScreen.main.bounds.size.width - 3 * cellSpacing) / 2
        let height = width
        return CGSize(width: width, height: height)
    }
    
}
```
