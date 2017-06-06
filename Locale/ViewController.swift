//
//  ViewController.swift
//  Locale
//
//  Created by Yaroslav Sarnitskiy on 30.05.17.
//  Copyright © 2017 GS Develop Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBOutlet weak var currencyLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        populateValues()
    }
    
    func populateValues() {
        var numberFormatter: NumberFormatter {
            let formatter = NumberFormatter()
            formatter.numberStyle = .decimal
            return formatter
        }
        
        var currencyFormatter: NumberFormatter {
            let formatter = NumberFormatter()
            formatter.numberStyle = .currency
            return formatter
        }
        
        var dateFormatter: DateFormatter {
            let formatter = DateFormatter()
            formatter.dateStyle = .medium
            formatter.timeStyle = .medium
            return formatter
        }
        
        textLabel.text = NSLocalizedString("GOOD_MORNING",comment:"Good Morning")
        numberLabel.text = numberFormatter.string(from: 9999999.999)
        currencyLabel.text = currencyFormatter.string(from: 5000)
        dateLabel.text = dateFormatter.string(from: NSDate() as Date)
        imageView.image = UIImage(named: "\(NSLocalizedString("IMG",comment:"adele-hello"))")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

