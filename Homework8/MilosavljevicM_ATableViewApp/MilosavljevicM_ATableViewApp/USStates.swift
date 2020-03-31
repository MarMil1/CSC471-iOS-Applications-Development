//
//  USStates.swift
//  MilosavljevicM_ATableViewApp
//
//  Created by Marko Milosavljevic on 3/7/20.
//  Copyright © 2020 Marko Milosavljevic. All rights reserved.
//

import Foundation

let states = [
    State(name: "Alabama",
          region: .south,
          shortDescription: "Yellowhammer State",
          longDescription: "Located in the southern United States with warm climate. Bordering with Mississippi, Tennessee, Florida and Georgia. State moto is : Audemus jura nostra defendere or We Dare Maintain Our Rights."),
    
    State(name: "Illinois",
          region: .north,
          shortDescription: "Land of Lincoln",
          longDescription: "Located in the northern United States with mostly cold climate. Bordering with Kentucky, Missouri, Wisconsin, Indiana, Iowa and Michigan. State moto is: State sovereignty, national union."),
    
    State(name: "Florida",
          region: .south,
          shortDescription: "Sunshine State",
          longDescription: "Located in the southern United States with mostly warm climate. Bordering with Georgia and Alabama. State moto is: In God We Trust."),
    
    State(name: "New York",
          region: .east,
          shortDescription: "Empire State",
          longDescription: "Located in the eastern United States with mostly cold climate. Bordering with Pennsylvania, Rhode Island (water border), Vermont, Connecticut, Massachusetts and New Jersey. State moto is: Excelsior or higher"),
    
    State(name: "California",
          region: .west,
          shortDescription: "Golden State",
          longDescription: "Located in the western United States with mostly warm climate. Bordering with Pennsylvania, Rhode Island (water border), Vermont, Connecticut, Massachusetts and New Jersey. State moto is: Eureka or I have found it!"),
    
    State(name: "Texas",
          region: .south,
          shortDescription: "Lone Star State",
          longDescription: "Located in the southern United States with mostly warm climate. Bordering with New Mexico, Oklahoma, Arkansas and Louisiana. State moto is: Friendship."),
    
    State(name: "Montana",
          region: .north,
          shortDescription: "Treasure State",
          longDescription: "Located in the northern United States with mostly cold climate. Bordering with South Dakota, Wyoming, Idaho and North Dakota. State moto is: Oro y Plata or gold and silver."),
    
    State(name: "Virginia",
          region: .east,
          shortDescription: "Old Dominion",
          longDescription: "Located in the eastern United States with mostly warm climate. Bordering with North Carolina, Tennessee, West Virginia, Kentucky and Maryland. State moto is: Sic Semper Tyrannis or Thus Always to Tyrants."),
    
    State(name: "Washington",
          region: .west,
          shortDescription: "Evergreen State",
          longDescription: "Located in the western United States with mostly cold climate. Bordering with Oregon and Idaho. State moto is: Alki or bye and bye."),
    
    State(name: "Oregon",
          region: .west,
          shortDescription: "Beaver State",
          longDescription: "Located in the western United States with mostly cold climate. Bordering with Washington, California and Nevada. State moto is: She Flies With Her Own Wings."),
    
    State(name: "Michigan",
          region: .north,
          shortDescription: "Wolverine State",
          longDescription: "Located in the northern United States with mostly cold climate. Bordering with Ohio, Wisconsin, Illinois, Indiana and Minnesota. State moto is: Si Quaeris Peninsulam Amoenam Circumspice or If you seek a pleasant peninsula, look about you."),
    
    State(name: "Georgia",
          region: .east,
          shortDescription: "Peach State",
          longDescription: "Located in the eastern United States with mostly warm climate. Bordering with North Carolina, South Carolina, Tennessee, Alabama and Florida. State moto is: Wisdom, Justice, and Moderation."),
    
    State(name: "Louisiana",
          region: .south,
          shortDescription: "Pelican State",
          longDescription: "Located in the southern United States with mostly warm climate. Bordering with Texas, Arkansas and Mississippi. State moto is: Union, justice, and confidence."),
    
    State(name: "Mississippi",
          region: .south,
          shortDescription: "Magnolia State",
          longDescription: "Located in the southern United States with mostly warm climate. Bordering with Alabama, Arkanssas, Louisiana and Tennessee. State moto is: Virtute et armis or By valor and arms."),
    
    State(name: "Nevada",
          region: .west,
          shortDescription: "Magnolia State",
          longDescription: "Located in the western United States with mostly warm climate. Bordering with Idaho, Oregon, Utah, Arizona and California. State moto is: All for our country."),
    
    State(name: "North Dakota",
          region: .north,
          shortDescription: "Peace Garden State",
          longDescription: "Located in the northern United States with mostly cold climate. Bordering with South Dakota, Minnesota and Montana. State moto is: Liberty and Union Now and Forever, One and Inseparable."),
    
    State(name: "New Jersey",
          region: .east,
          shortDescription: "Garden State",
          longDescription: "Located in the eastern United States with mostly cold climate. Bordering with Pennsylvania, Delaware and New York. State moto is: Liberty and Prosperity."),
    
    
]

class State {

enum `Region`: String {
    case north = "north"
    case south = "south"
    case east = "east"
    case west = "west"
}

var name: String
var region: Region
var shortDescription: String
var longDescription: String

    init(name: String, region: Region, shortDescription: String, longDescription: String) {
        self.name = name
        self.region = region
        self.shortDescription = shortDescription
        self.longDescription = longDescription
    }
    
}
