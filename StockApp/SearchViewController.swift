//
//  SearchViewController.swift
//  StockApp
//
//  Created by AndyLin on 2022/7/20.
//


import UIKit

class SearchViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    

    
    @IBOutlet weak var TableView: UITableView!
    let StockCodeData = ["AAPL","MCD","FB","AMZN","NKE"]
    let StockPriceData = ["150","140","110","100","120"]
    //let myColorData = [".red",".blue",".red",".blue",".red"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "SearchTableViewCell", bundle: nil)
        TableView.register(nib, forCellReuseIdentifier: "SearchTableViewCell")
        TableView.delegate = self
        TableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return StockCodeData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SearchTableViewCell",
                                                 for: indexPath) as! SearchTableViewCell
        cell.StockCodeLabel.text = StockCodeData[indexPath.row]
        cell.StockPriceLabel.text = StockPriceData[indexPath.row]
        //cell.StockBackgroundImageView.backgroundColor = .blue
        cell.StockLogoImageView.image = UIImage(named: StockCodeData[indexPath.row])
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = cell.StockBackgroundImageView.bounds
        gradientLayer.colors = BackGroundColor(name: "Hi")
        cell.StockBackgroundImageView.layer.addSublayer(gradientLayer)
        
        return cell
    }
    
    func BackGroundColor(name:String) -> UIColor{
        let GetBackGroundColor = [UIColor.orange.cgColor, UIColor.blue.cgColor]
        
        return UIColor(cgColor: GetBackGroundColor as! CGColor)
    }
    
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! RestaurantTableViewCell
 
       return cell
    }*/
}
