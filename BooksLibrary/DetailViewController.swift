//
//  DetailViewController.swift
//  BooksLibrary
//
//  Created by Kevin Miyata on 10/18/18.
//  Copyright © 2018 Kevin Miyata. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailAuthorLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var detailDescriptionLabel: UILabel!

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            if let label = detailDescriptionLabel {
                label.text = detail.releaseDate
            }
            if let label = titleLabel {
                label.text = detail.title
            }
            if let label = detailAuthorLabel {
                label.text = detail.author
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    var detailItem: Book? {
        didSet {
            // Update the view.
            configureView()
        }
    }

}

