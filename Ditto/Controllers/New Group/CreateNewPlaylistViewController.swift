//
//  CreateNewPlaylistViewController.swift
//  Ditto
//
//  Created by Sam Lee on 4/11/19.
//  Copyright © 2019 Melanie Cooray. All rights reserved.
//

import UIKit
import Alamofire

class CreateNewPlaylistTableViewController: UITableViewController {
    
    var names = [String]()
    
    var searchURL = "https://api.spotify.com/v1/search?q=Shawn%20Mendes&type=track%2Cartist&market=US&offset=20"
    
    typealias JSONStandard = [String : AnyObject]

    override func viewDidLoad() {
        super.viewDidLoad()
        callAlamo(url: searchURL)
        
        

        // Do any additional setup after loading the view.
    }
    
    
    func callAlamo(url : String) {
        AF.request(url).responseJSON(completionHandler: {
            response in
            
            self.parseData(JSONData: response.data!)
            
        })
    }
    
    func parseData(JSONData : Data) {
        print("trying to parse")
        do {
            var readableJSON = try JSONSerialization.jsonObject(with: JSONData, options: .mutableContainers) as! JSONStandard
            
            if let tracks = readableJSON["tracks"] as? JSONStandard {
                if let items = tracks["items"] as? [JSONStandard]{
                    
                    for i in 0..<items.count {
                        
                        let item = items[i]
                        
                        let name = item["name"] as! String
                        
                        names.append(name)
                        
                        self.tableView.reloadData()
                    }
                }
            }
            print(readableJSON)
        }catch{
            print(error)
            print("this")
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        cell?.textLabel?.text = names[indexPath.row]
        return cell!
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
