//  SpotifyExampleViewController.swift
//  XLActionController ( https://github.com/xmartlabs/XLActionController )
//
//  Copyright (c) 2015 Xmartlabs ( http://xmartlabs.com )
//
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import UIKit
import XLActionController

class SpotifyExampleViewController: UIViewController {

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewDidLoad() {
        navigationController?.setNavigationBarHidden(true, animated: false)
    }

    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
    
    @IBAction func backButtonDidTouch(sender: UIButton) {
        navigationController?.popViewControllerAnimated(true)
    }
    
    @IBAction func tapGestureDidRecognize(sender: UITapGestureRecognizer) {
        let actionController = SpotifyActionController()
        actionController.headerData = SpotifyHeaderData(title: "The Fast And The Furious Soundtrack Collection", subtitle: "Various Artists", image: UIImage(named: "sp-header-icon")!)
        actionController.addAction(Action(ActionData(title: "Save Full Album", image: UIImage(named: "sp-add-icon")!), style: .Default, handler: { action in }))
        actionController.addAction(Action(ActionData(title: "Remove", image: UIImage(named: "sp-remove-icon")!), style: .Default, handler: { action in }))
        actionController.addAction(Action(ActionData(title: "Share", image: UIImage(named: "sp-share-icon")!), style: .Default, handler: { action in }))
        actionController.addAction(Action(ActionData(title: "Go to Album", image: UIImage(named: "sp-view-album-icon")!), style: .Default, handler: { action in }))
        actionController.addAction(Action(ActionData(title: "Start radio", image: UIImage(named: "sp-radio-icon")!), style: .Default, handler: { action in }))
        

        presentViewController(actionController, animated: true, completion: nil)
    }
}
