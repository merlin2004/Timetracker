//
//  ExportViewController.swift
//  Timetracker
//
//  Created by Antonio Ribeiro on 04/05/16.
//  Copyright © 2016 Antonio Ribeiro. All rights reserved.
//

import Foundation
import Cocoa


class ExportViewController: NSViewController {
    
    var string: String?
    
    @IBOutlet var textView: NSTextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView.isEditable = false
        textView.isSelectable = true
        
        if let s = string {
            let attrString = NSAttributedString.init(string: s, attributes: [.foregroundColor: NSColor.textColor])
            textView.textStorage?.append(attrString)
        }
    }
    
    override func cancelOperation(_ sender: Any?) {
        self.dismiss(nil)
    }
    
}
