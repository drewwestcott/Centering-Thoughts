//
//  ViewController.swift
//  Centering Thoughts
//
//  Created by Drew Westcott on 09/02/2017.
//  Copyright © 2017 Drew Westcott. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	let localData = UserDefaults.standard
	var meditations = [Meditation]()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		if let encodedMeditations = localData.array(forKey: "meditations") {
			
			//let storedMeditations = NSKeyedUnarchiver.unarchiveObject(with: encodedMeditations as! [Meditation])
			print("Retrieved data '\(encodedMeditations)")
			loopThroughMeditation()
		} else {
			print("Nothing retrieved")
			setUpMeditationData()
		}
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


	func setUpMeditationData() {
		
		let day = Meditation(centeringThought: "My beliefs enhance my life.", mantra: "Om Bhavam Namah", meaning: "I am absolute existence")
		meditations.append(day)
		
		let storeMeditaion = NSKeyedArchiver.archivedData(withRootObject: meditations)
		localData.set(storeMeditaion, forKey: "meditations")
		print("Stored")
		
	}

	func loopThroughMeditation() {
		
		for meditation in meditations {
			print("Centering Though: \(meditation.centeringThought)")
			print("Mantra: \(meditation.mantra) [\(meditation.meaning)]")
		}
	}
	
}

