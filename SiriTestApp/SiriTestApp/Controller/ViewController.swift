//
//  ViewController.swift
//  SiriTestApp
//
//  Created by Matt Ward on 4/27/19.
//  Copyright © 2019 mattrobertward. All rights reserved.
//

import UIKit

public class ViewController: UIViewController
{
    
    private lazy var myColorTool : ColorTool = ColorTool()
    //private lazy var mySportsFeed : MySportsFeed = MySportsFeed()
    private lazy var myDataFeed : DataFeed = DataFeed()
    @IBOutlet weak var outputLabel: UILabel!
    
    @IBOutlet weak var colorButton: UIButton!
    @IBOutlet weak var initFeedButton: UIButton!
    
    public override func viewDidLoad() -> Void
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func initFeedClick(_ sender: UIButton) {
        //mySportsFeed.initialize()
        myDataFeed.getGameTime(team: "Red Sox", date: "2019-03-28")
    }
    
    @IBAction func colorButtonClick(_ sender: UIButton) -> Void
    {
        self.view.backgroundColor = myColorTool.createRandomColor()
        colorButton.backgroundColor = myColorTool.createRandomColor()
        
    }
}
