//
//  BusinessViewController.swift
//  Yelp_App
//
//  Created by Haena Kim on 7/12/16.
//  Copyright © 2016 Haena Kim. All rights reserved.
//

import UIKit

class BusinessViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var businesses: [Business]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        tableView.estimatedRowHeight = 120  //IOS will estimate the total height
        tableView.rowHeight = UITableViewAutomaticDimension 
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension BusinessViewController: UITableViewDataSource, UITableViewDelegate{

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if businesses != nil{
            return businesses!.count
        }else {
            return 0
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("BusinessCell", forIndexPath:  indexPath) as! BusinessCell
        
        cell.business = businesses[indexPath.row]
        
        //cell.addressLabel = usinesses[indexPath.row].address
        
        return cell
    }

}