

import UIKit

class ExtraViewController : UIViewController {
        
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    @IBAction func doButton (sender : AnyObject) {
        println("presented vc's presenting vc: \(self.presentingViewController)")
        self.presentingViewController!.dismissViewControllerAnimated(true, completion: nil)
    }
}
