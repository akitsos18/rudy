

import UIKit

class NewsTableViewController: UITableViewController {
    @IBOutlet weak var menuButton:UIBarButtonItem!

    override func viewDidLoad() {
        super.viewDidLoad()
         self.clearsSelectionOnViewWillAppear = false

        self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows in the section.
        return 1
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! NewsTableViewCell

        // Configure the cell...
//                if indexPath.row == 0 {
//            cell.postImageView.image = UIImage(named: "watchkit-intro")
//           cell.postTitleLabel.text = "WatchKit Introduction: Building a Simple Guess Game"
//            cell.authorLabel.text = "Simon Ng"
//            cell.authorImageView.image = UIImage(named: "author")
//
//        } else if indexPath.row == 1 {
//            cell.postImageView.image = UIImage(named: "custom-segue-featured-1024")
//            cell.postTitleLabel.text = "Building a Chat App in Swift Using Multipeer Connectivity Framework"
//            cell.authorLabel.text = "Gabriel Theodoropoulos"
//            cell.authorImageView.image = UIImage(named: "appcoda-300")
//
//        } else {
//            cell.postImageView.image = UIImage(named: "webkit-featured")
//            cell.postTitleLabel.text = "A Beginner’s Guide to Animated Custom Segues in iOS 8"
//            cell.authorLabel.text = "Gabriel Theodoropoulos"
//            cell.authorImageView.image = UIImage(named: "appcoda-300")
//
//        }

        return cell
    }
    

}
