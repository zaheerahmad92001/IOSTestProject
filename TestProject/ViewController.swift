//
//  ViewController.swift
//  TestProject
//
//  Created by zaheer on 04/09/2022.
//

import UIKit
import SDWebImage
import Alamofire
//https://www.tvmaze.com/api
class ViewController: UIViewController {
    var EpisodesModel:[EpisodesModel] = []
    @IBOutlet weak var tableView: UITableView!{
        didSet{
           tableView.dataSource = self
           tableView.delegate = self
            tableView.reloadData()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "TestCell", bundle: nil), forCellReuseIdentifier: "TestCell")
        callApi()
    }

    
    func callApi(){
        userhandler.getEpisods(Success: {response in
            self.EpisodesModel =  response ?? []
            self.tableView.reloadData()
        }, Failure: {error in
            print(error.message)
        })
    }

}

extension ViewController : UITableViewDelegate,UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.EpisodesModel.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell =  tableView.dequeueReusableCell(withIdentifier: "TestCell") as? TestCell else { return UITableViewCell()}
        
        cell.lbldetails.text = self.EpisodesModel[indexPath.row].summary ?? ""
        cell.img.sd_setImage(with: URL(string:self.EpisodesModel[indexPath.row].image?.original ?? ""), placeholderImage: UIImage(named: ""))
        return cell
    }
}
