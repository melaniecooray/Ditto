//
//  CreateNewPlaylistViewController.swift
//  Ditto
//
//  Created by Sam Lee on 4/11/19.
//  Copyright © 2019 Melanie Cooray. All rights reserved.
//

import UIKit
import Alamofire
import Firebase

class CreateNewPlaylistTableViewController: UITableViewController {
    
    var names = [String]()
    var uris = [String]()
    
    var searchURL = "https://api.spotify.com/v1/search?q=Shawn+Mendes&type=track"
    let parameters: HTTPHeaders = ["Accept":"application/json", "Authorization":"Bearer \(UserDefaults.standard.value(forKey: "accessToken")!)"]
    
    typealias JSONStandar = [String : AnyObject]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        callAlamo(url: searchURL, headers: parameters)
    }
    
    func callAlamo(url : String, headers: HTTPHeaders){
        AF.request(url, headers: parameters).responseJSON(completionHandler: {
            response in
            
            self.parseData(JSONData: response.data!)
        })
    }
    
    func parseData(JSONData : Data) {
        do {
            var readableJSON = try JSONSerialization.jsonObject(with: JSONData, options: .mutableContainers) as! JSONStandar
            
            if let tracks = readableJSON["tracks"] as? JSONStandar{
                if let items = tracks["items"] as? [JSONStandar]{
                    
                    for i in 0..<items.count {
                        
                        let item = items[i]
                        
                        let name = item["name"] as! String
                        let uri = item["uri"] as! String
                        
                        names.append(name)
                        uris.append(uri)
                        
                        self.tableView.reloadData()
                    }
                }
            }
            print(readableJSON)
        }catch{
            print(error)
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
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
