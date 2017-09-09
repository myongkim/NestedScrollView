//
//  ViewController.swift
//  NestedScrollView
//
//  Created by Isaac Kim on 9/6/17.
//  Copyright © 2017 Isaac Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
   
    
    private struct Storyboard {
        static let cellIdentifier = "Cell"
    }
    
    var dataItems : [String] = ["Long Line just to prove a point. It should be out side of the screen so it has to scroll to see the number","Long Line just to prove a point. It should be out side of the screen so it has to scroll to see the number","Long Line just to prove a point. It should be out side of the screen so it has to scroll to see the number","Long Line just to prove a point. It should be out side of the screen so it has to scroll to see the number","Long Line just to prove a point. It should be out side of the screen so it has to scroll to see the number","Long Line just to prove a point. It should be out side of the screen so it has to scroll to see the number","Long Line just to prove a point. It should be out side of the screen so it has to scroll to see the number","Long Line just to prove a point. It should be out side of the screen so it has to scroll to see the number","Long Line just to prove a point. It should be out side of the screen so it has to scroll to see the number","Long Line just to prove a point. It should be out side of the screen so it has to scroll to see the number","Long Line just to prove a point. It should be out side of the screen so it has to scroll to see the number","Long Line just to prove a point. It should be out side of the screen so it has to scroll to see the number","Long Line just to prove a point. It should be out side of the screen so it has to scroll to see the number","Long Line just to prove a point. It should be out side of the screen so it has to scroll to see the number","Long Line just to prove a point. It should be out side of the screen so it has to scroll to see the number","Long Line just to prove a point. It should be out side of the screen so it has to scroll to see the number","Long Line just to prove a point. It should be out side of the screen so it has to scroll to see the number",]
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.cellIdentifier, for: indexPath) as! TableViewCell
        
        cell.dataLabel.text = dataItems[indexPath.row]
        
        
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.delegate = self
        tableView.dataSource = self

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
 
}

