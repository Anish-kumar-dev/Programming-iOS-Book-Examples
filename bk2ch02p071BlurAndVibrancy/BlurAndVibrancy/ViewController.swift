

import UIKit

extension CGRect {
    init(_ x:CGFloat, _ y:CGFloat, _ w:CGFloat, _ h:CGFloat) {
        self.init(x:x, y:y, width:w, height:h)
    }
}
extension CGSize {
    init(_ width:CGFloat, _ height:CGFloat) {
        self.init(width:width, height:height)
    }
}
extension CGPoint {
    init(_ x:CGFloat, _ y:CGFloat) {
        self.init(x:x, y:y)
    }
}


class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mainview = self.view!
        let v1 = UIView(frame:CGRect(113, 111, 132, 194))
        v1.backgroundColor = UIColor(red: 1, green: 0.4, blue: 1, alpha: 1)
        let v2 = UIView(frame:CGRect(41, 56, 132, 194))
        v2.backgroundColor = UIColor(red: 0.5, green: 1, blue: 0, alpha: 1)
        let v3 = UIView(frame:CGRect(43, 197, 160, 230))
        v3.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
        mainview.addSubview(v1)
        v1.addSubview(v2)
        mainview.addSubview(v3)

        let blur = UIVisualEffectView(effect: UIBlurEffect(style: .extraLight))
        blur.frame = mainview.bounds
        blur.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        let vib = UIVisualEffectView(effect: UIVibrancyEffect(
            blurEffect: blur.effect as! UIBlurEffect))
        let lab = UILabel()
        lab.text = "Hello, world!"
        lab.sizeToFit()
        vib.frame = lab.frame
        vib.contentView.addSubview(lab)
        vib.center = CGPoint(blur.bounds.midX, blur.bounds.midY)
        vib.autoresizingMask = [.flexibleTopMargin, .flexibleBottomMargin,
            .flexibleLeftMargin, .flexibleRightMargin]
        blur.contentView.addSubview(vib)
        mainview.addSubview(blur)
    }



}

