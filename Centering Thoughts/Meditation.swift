//
//  Meditation.swift
//  Centering Thoughts
//
//  Created by Drew Westcott on 09/02/2017.
//  Copyright © 2017 Drew Westcott. All rights reserved.
//

import UIKit

class Meditation: NSObject, NSCoding {
	
	private var _centeringThought : String!
	private var _mantra : String!
	private var _meaning : String!
	
	var centeringThought : String {
		return _centeringThought
	}
	
	var mantra : String {
		return _mantra
	}
	
	var meaning : String {
		return _meaning
	}
	
	init(centeringThought : String, mantra : String, meaning : String) {
		
		self._centeringThought = centeringThought
		self._mantra = mantra
		self._meaning = meaning
		
	}
	
	required init?(coder aDecoder: NSCoder) {
		
		self._centeringThought = aDecoder.decodeObject(forKey: "centeringThought") as! String
		self._mantra = aDecoder.decodeObject(forKey: "mantra") as! String
		self._meaning = aDecoder.decodeObject(forKey: "meaning") as! String
		
		super.init()
	}
	
	func encode(with aCoder: NSCoder) {
		
		aCoder.encode(_centeringThought, forKey: "centeringThought")
		aCoder.encode(_mantra, forKey: "mantra")
		aCoder.encode(_meaning, forKey: "meaning")
		
	}

}
