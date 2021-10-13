//
//  ActivitiesMockStore.swift
//  SwiftUIStarterKitApp
//
//  Created by Osama Naeem on 06/08/2019.
//  Copyright © 2019 NexThings. All rights reserved.
//

import SwiftUI

class ActivitiesMockStore {
    
    static let activities: [ActivitiesItem] = [
        ActivitiesItem(id: 0, activityName: "SURFING", activityNameLabel: "Surfing", activityImage: "surfing", selectedActivity: false),
        ActivitiesItem(id: 1, activityName: "SNOWBOARD", activityNameLabel: "Snowboarding", activityImage: "snowboarding", selectedActivity: false),
        ActivitiesItem(id: 2, activityName: "HIKING", activityNameLabel: "Hiking", activityImage: "hiking", selectedActivity: false)
        
    ]
    
    static let activityData: [ActivitiesData] = [
        
        ActivitiesData(id: 0, activitiesPlaces:
            [ActivitiesPlaces(id: 0, activityPlace: "Costa Rica", activityPlaceImage: "costarica", famousPointsArray: [ActivitiesFamousPoints(id: 0, pointName: "Tamarindo", pointImage: "tamarindo", pointDescription: "Tamarindo is a town in the Guanacaste Province, on Costa Rica’s Pacific coast. It’s known for beaches with strong surf, like Playa Tamarindo and Playa Langosta. To the north, Playa Grande beach is a major nesting site for huge leatherback turtles, and forms part of Las Baulas National Marine Park"),
                                                                                                                       
            ActivitiesFamousPoints(id: 1, pointName: "Jaco", pointImage: "jaco", pointDescription: "Jacó is a town on the Pacific coast of Costa Rica, southwest of the capital city, San José. It's known for its surf beaches and nightlife, and as a gateway to national parks. Rocky, gray-sand Jacó Beach is west of town. Southeast, Hermosa Beach has big waves."),
            
            ActivitiesFamousPoints(id: 2, pointName: "Dominical", pointImage: "dominical", pointDescription: "Dominical is a beach-front town in Bahía Ballena de Osa District in the province of Puntarenas in Costa Rica, approximately 45 km south of Quepos. It is well known for large, year-round waves and is popular among surfers in Costa Rica. The town began as a small fishing village")
            ]),
             
             ActivitiesPlaces(id: 1, activityPlace: "Bali", activityPlaceImage: "bali", famousPointsArray: [ActivitiesFamousPoints(id: 0, pointName: "Kuta", pointImage: "kuta", pointDescription: "Kuta is a beach and resort area in the south of the island of Bali, Indonesia. One of Bali's first tourist developments, it's best known for its party-centric atmosphere and surfing in the Indian Ocean. Kuta's long, consistent waves make it a popular surf spot, particularly for beginners"),
             
                 ActivitiesFamousPoints(id: 1, pointName: "Jimbaran", pointImage: "jimbaran", pointDescription: "Jimbaran Bay has a long beach with calm waters. It's lined with fish restaurants and backed by tropical forest. At its northern end, colorful boats are pulled up by the lively, open-air Kedonganan fish market. Southwest of the bay are Dreamland Beach and Balangan Beach, known for their strong surf waves.")
             ]),
             
             ActivitiesPlaces(id: 2, activityPlace: "Cape Town", activityPlaceImage: "capetown", famousPointsArray: [ActivitiesFamousPoints(id: 0, pointName: "Muizenberg", pointImage: "muizenberg", pointDescription: "Surfer’s Corner at Muizenberg is a popular learning spot, and is only about a 30-minute drive from the Cape Town city centre. The waves characteristic of this surf spot are gentle, and are ideal under a north-westerly wind direction."),
                 
                  ActivitiesFamousPoints(id: 1, pointName: "Long Beach", pointImage: "longbeach", pointDescription: "Long Beach at Kommetjie is just that, a long, sandy beach that’s very popular with surfers. The wave breaks both to the left and the right, which gives ample opportunities for both natural (right-leg dominated surfer) and goofy footers")
             ])],
                      
            activityResources:
        
            [ActivityResource(id: 0, resourceName: "Lifestyle", resourceDescription: "Explore, Fashion, Food, music, art, photography, travel and more!", resources:
                [ActivityResourcesItem(id: 0, resourceName: "Yoga for Surfers", resourceImage: "yoga", resourceDescription: "Article"),
                 ActivityResourcesItem(id: 1, resourceName: "Travel for a living", resourceImage: "travel", resourceDescription: "Article"),
                 ActivityResourcesItem(id: 2, resourceName: "Tropical Green Smoothie", resourceImage: "smoothie", resourceDescription: "Tutorial")]),
                
                ActivityResource(id: 1, resourceName: "Equipment", resourceDescription: "Find your dream gear", resources: [ActivityResourcesItem(id: 1, resourceName: "Boards", resourceImage: "surfboard-1", resourceDescription: ""),
                     ActivityResourcesItem(id: 2, resourceName: "Boardshorts", resourceImage: "boardshorts", resourceDescription: ""),
                     ActivityResourcesItem(id: 3, resourceName: "Surfboard Bags", resourceImage: "surfboardbags", resourceDescription: "")]),
                
                ActivityResource(id: 2, resourceName: "Training", resourceDescription: "Best surf training resources", resources: [ActivityResourcesItem(id: 1, resourceName: "Surf Core Training", resourceImage: "boardshorts", resourceDescription: "Video"),
                     ActivityResourcesItem(id: 2, resourceName: "Sri Lanka Surf Camp", resourceImage: "srilankacamp", resourceDescription: "Camp"),
                     ActivityResourcesItem(id: 3, resourceName: "Surf Photography Training", resourceImage: "surfphoto", resourceDescription: "Photography")])
                ]),
       
        ActivitiesData(id: 1, activitiesPlaces: [
        
            ActivitiesPlaces(id: 1, activityPlace: "Snowbird", activityPlaceImage: "snowbird", famousPointsArray: [ActivitiesFamousPoints(id: 0, pointName: "Snowbird", pointImage: "snowbird", pointDescription: "Just over the mountains to the north, Brighton and Solitude are located in Big Cottonwood Canyon. To the north of these ski and snowboard areas are Park City and Deer Valley, off of Interstate 80")]),
            ActivitiesPlaces(id: 2, activityPlace: "Cervinia", activityPlaceImage: "italy", famousPointsArray: [ActivitiesFamousPoints(id: 0, pointName: "Cervinia", pointImage: "italy", pointDescription: "Breuil-Cervinia is an Alpine resort in the Valle d’Aosta region of northwest Italy. It’s known for its snow-capped mountains, including the pyramid-shaped Matterhorn. A network of slopes connects Breuil-Cervinia to Swiss resorts like Zermatt,")]),
            ActivitiesPlaces(id: 3, activityPlace: "Chamonix", activityPlaceImage: "chamonix", famousPointsArray: [ActivitiesFamousPoints(id: 0, pointName: "Chamonix", pointImage: "chamonix", pointDescription: "Chamonix-Mont-Blanc (usually shortened to Chamonix) is a resort area near the junction of France, Switzerland and Italy. At the base of Mont Blanc, the highest summit in the Alps,")])],
                      
                      
            activityResources:
       
           [ActivityResource(id: 0, resourceName: "Lifestyle", resourceDescription: "Explore, Fashion, Food, music, art, photography, travel and more!", resources:
               [ActivityResourcesItem(id: 0, resourceName: "Peace in Mountains", resourceImage: "mountains", resourceDescription: "Article"),
                ActivityResourcesItem(id: 1, resourceName: "Travel for a living", resourceImage: "travel", resourceDescription: "Article"),
                ActivityResourcesItem(id: 2, resourceName: "Mountain top drinks", resourceImage: "drinks", resourceDescription: "Guide")]),
               
               ActivityResource(id: 1, resourceName: "Equipment", resourceDescription: "Find your dream gear", resources: [ActivityResourcesItem(id: 1, resourceName: "Boards", resourceImage: "snowboards", resourceDescription: ""),
                    ActivityResourcesItem(id: 2, resourceName: "Goggles", resourceImage: "goggles", resourceDescription: ""),
                    ActivityResourcesItem(id: 3, resourceName: "Snowboarding boots", resourceImage: "boots", resourceDescription: "")]),
               
               ActivityResource(id: 2, resourceName: "Training", resourceDescription: "Best Snowboarding training resources", resources: [ActivityResourcesItem(id: 1, resourceName: "Snowboard Training", resourceImage: "snowboarder", resourceDescription: "Video"),
                    ActivityResourcesItem(id: 2, resourceName: "Snowboard Resorts Training", resourceImage: "frenchresort", resourceDescription: "Camp"),
                    ActivityResourcesItem(id: 3, resourceName: "Snowboarding Photography", resourceImage: "snowboardphoto", resourceDescription: "Photography")])
               ]),
       
       
        ActivitiesData(id: 2, activitiesPlaces: [
        
            ActivitiesPlaces(id: 1, activityPlace: "Torres del Paine", activityPlaceImage: "torresdelpaine", famousPointsArray: [ActivitiesFamousPoints(id: 0, pointName: "The Fauna Trail", pointImage: "faunatrail", pointDescription: "This trail is a great hiking option for beginner hikers or anyone looking for a quick day trip. While it may be short in distance, it doesn’t fall short on beautiful landscapes and neverending wildlife. On this somewhat secret trail, you’ll spot herds of guanacos grazing, condors flying through the sky, and if you’re lucky"),
            
                ActivitiesFamousPoints(id: 1, pointName: "Laguna Azul", pointImage: "lagunaazul", pointDescription: "aguna Azul, which literally translate to blue lagoon, is just that – a picturesque blue lake surrounded by massive mountains with jagged snow-covered peaks. Pictures don’t do it justice, making it one place you have to see to believe.")
            ]),
            
            ActivitiesPlaces(id: 2, activityPlace: "Peru", activityPlaceImage: "peru", famousPointsArray: [ActivitiesFamousPoints(id: 0, pointName: "Inca Trail", pointImage: "inca", pointDescription: "One thing’s for sure: you absolutely cannot go to Peru without visiting Machu Picchu, one of the seven ancient Wonders of the World. The classic and most famous way to get there is via the Inca Trail, the trail that the original Incans traversed."),
                
                ActivitiesFamousPoints(id: 1, pointName: "Santa Cruz Trek", pointImage: "santacruz", pointDescription: "The Santa Cruz trek in Peru’s Huascarán National Park in the Cordillera Blanca mountain range is considered by many experienced hikers to be one of the most beautiful in the world, seriously! The entire hike is framed by dramatic mountains, glaciers, and deeply blue lakes.")
            
            ]),
            ActivitiesPlaces(id: 3, activityPlace: "Grand Canyon", activityPlaceImage: "grandcanyon", famousPointsArray: [ActivitiesFamousPoints(id: 0, pointName: "South Rim Trail", pointImage: "southrim", pointDescription: "For many visitors, the South Rim Trail is where they first lay eyes on the Grand Canyon. It's an experience not easily forgotten, and the viewpoints are plenty. With minimal elevation change and interpretive information along the way, this 13-mile paved route is lined with shuttle stops"),
                  
                ActivitiesFamousPoints(id: 1, pointName: "Bright Angel Trail", pointImage: "brightangel", pointDescription: "An iconic hiking trail of America, the Bright Angel Trail descends steeply from the South Rim of the Grand Canyon, revealing fantastic views that cannot be experienced from the rim. Descending over 4,000 feet in nine miles between the South Rim and the Colorado River.")

            ])],
                      
                      
            activityResources:
       
           [ActivityResource(id: 0, resourceName: "Lifestyle", resourceDescription: "Explore, Fashion, Food, music, art, photography, travel and more!", resources:
               [ActivityResourcesItem(id: 0, resourceName: "Clearing your thoughts", resourceImage: "hikingmental", resourceDescription: "Article"),
                ActivityResourcesItem(id: 1, resourceName: "Hiking and physical benefits", resourceImage: "hiker", resourceDescription: "Article"),
                ActivityResourcesItem(id: 2, resourceName: "Hikers Parties", resourceImage: "hikersparties", resourceDescription: "Fun")]),
               
               ActivityResource(id: 1, resourceName: "Equipment", resourceDescription: "Find your dream gear", resources: [ActivityResourcesItem(id: 1, resourceName: "Footwear", resourceImage: "shoes", resourceDescription: ""),
                    ActivityResourcesItem(id: 2, resourceName: "Camping Equipment", resourceImage: "camping", resourceDescription: ""),
                    ActivityResourcesItem(id: 3, resourceName: "Hiking bags", resourceImage: "bags", resourceDescription: "")]),
               
               ActivityResource(id: 2, resourceName: "Photography", resourceDescription: "Best landscape photography resources", resources: [ActivityResourcesItem(id: 1, resourceName: "Camera equipment", resourceImage: "cameras", resourceDescription: "Video"),
                    ActivityResourcesItem(id: 2, resourceName: "Long exposure photography", resourceImage: "longexposure", resourceDescription: "Tutorial"),
                    ActivityResourcesItem(id: 3, resourceName: "Tips for best photography", resourceImage: "photography", resourceDescription: "Photography")])
               ])
       
    ]
    
    static let shoppingCartData: [ActivitiesCartItem] = [
           ActivitiesCartItem(itemID: "1", itemName: "Snow board", itemPrice: 450, itemColor: "Red", itemManufacturer: "Elan Explore", itemImage: "snowboardred"),
           ActivitiesCartItem(itemID: "2", itemName: "Camping Tent", itemPrice: 235, itemColor: "Yellow", itemManufacturer: "Explorers", itemImage: "campingtent"),
           ActivitiesCartItem(itemID: "3", itemName: "Surf board", itemPrice: 825, itemColor: "Black", itemManufacturer: "WaveExplore", itemImage: "surfboard")
       ]
    
}
