//
//  CompanyViewController.swift
//  CocoapodSample01
//
//  Created by 福島 聖 on 2014/06/12.
//  Copyright (c) 2014年 fukushima takashi. All rights reserved.
//

import UIKit

class CompanyViewController: UITableViewController,UITableViewDataSource, UITableViewDelegate{
    
    var items:NSMutableArray! = nil
    
    override func viewDidLoad(){
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView:UITableView!,heightForRowAtIndexPath indexPath:NSIndexPath!)->CGFloat{
        return 100
    }
    
    override func numberOfSectionsInTableView(tableView:UITableView)->Int{
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TechBlogURL.EndItem.toRaw()
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style:UITableViewCellStyle.Default, reuseIdentifier:"FeedCell")
        
        if let item = TechBlogURL.fromRaw(indexPath.row){
                cell.textLabel.text = item.name()
                cell.textLabel.numberOfLines = 0
        }
        return cell
    }
    
    override func tableView(tableView:UITableView, didSelectRowAtIndexPath indexPath:NSIndexPath){
        self.performSegueWithIdentifier("selectBlog", sender: self)
    }
    
    override func prepareForSegue(segue:UIStoryboardSegue?,sender:AnyObject?){
        if segue!.identifier == "selectBlog" {
            let viewController : ViewController = segue!.destinationViewController as ViewController
            var indexPath = self.tableView.indexPathForSelectedRow()
            viewController.selectedIndex = indexPath.row
        }
    }
}
