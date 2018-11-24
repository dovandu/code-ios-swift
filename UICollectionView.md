
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
            imageView.image = UIImage(named: food.imageName!)
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
