import 'package:flutter/material.dart';
import 'package:flutter_sport_spot/components/my_icons.dart';
import 'package:flutter_sport_spot/components/my_images.dart';

List bookingItems = [
  {
    "image": MyImages.gymImage,
    "icon": MyIcons.gymIcon,
    "title": "51 GYM DUBAI",
    "date": "Fri 2.8.2023  2:00 pm"
  },
  {
    "image": MyImages.stadiumImage,
    "icon": MyIcons.stadiumIcon,
    "title": "Paddington Recreation (stadium name)",
    "date": "Fri 2.8.2023  2:00 pm"
  },
  {
    "image": MyImages.campImage,
    "icon": MyIcons.campIcon,
    "title": "Camp Ally Pally",
    "date": "Fri 2.8.2023  2:00 pm"
  }
];
List newAdded = [
  {"image": MyImages.gymImage, "title": "Gym", "location": "51 GYM DUBAI"},
  {
    "image": MyImages.clubImage,
    "title": "Club",
    "location": "Paddington Recreation Ground"
  }
];
List nearActivities = [
  {
    "image": MyImages.trainingImage,
    "title": "51 GYM DUBAI",
    "icon": MyIcons.gymIcon,
    "type": "Gym",
    "location": "Al Wasl 51 Plaza 1 Entrance- Dubai - UAE"
  },
  {
    "image": MyImages.barryClub,
    "title": "Barry's Bootcamp",
    "icon": MyIcons.stadiumIcon,
    "type": "Club",
    "location": "Al Wasl 51 Plaza 1 Entrance- Dubai - UAE"
  },
  {
    "image": MyImages.barryCamp,
    "title": "51 GYM DUBAI",
    "icon": MyIcons.campIcon,
    "type": "Camping",
    "location": "Al Wasl 51 Plaza 1 Entrance- Dubai - UAE"
  }
];

List clubList = [
  {
    "image": MyImages.club1,
    "title": "Paddington Recreation Ground",
    "location": "Al Wasl 51 Plaza 1 Entrance- Dubai - UAE"
  },
  {
    "image": MyImages.club2,
    "title": "Mallinson Sports Centrer",
    "location": "Al Wasl 51 Plaza 1 Entrance- Dubai - UAE"
  },
  {
    "image": MyImages.club3,
    "title": "Paddington Recreation Ground",
    "location": "Al Wasl 51 Plaza 1 Entrance- Dubai - UAE"
  },
  {
    "image": MyImages.club4,
    "title": "Mallinson Sports Centrer",
    "location": "Al Wasl 51 Plaza 1 Entrance- Dubai - UAE"
  },
  {
    "image": MyImages.club5,
    "title": "Paddington Recreation Ground",
    "location": "Al Wasl 51 Plaza 1 Entrance- Dubai - UAE"
  },
  {
    "image": MyImages.club6,
    "title": "Paddington Recreation Ground",
    "location": "Al Wasl 51 Plaza 1 Entrance- Dubai - UAE"
  },
  {
    "image": MyImages.club7,
    "title": "Mallinson Sports Centrer",
    "location": "Al Wasl 51 Plaza 1 Entrance- Dubai - UAE"
  },
  {
    "image": MyImages.club8,
    "title": "Mallinson Sports Centrer",
    "location": "Al Wasl 51 Plaza 1 Entrance- Dubai - UAE"
  },
  {
    "image": MyImages.club9,
    "title": "Paddington Recreation Ground",
    "location": "Al Wasl 51 Plaza 1 Entrance- Dubai - UAE"
  },
  {
    "image": MyImages.club10,
    "title": "Mallinson Sports Centrer",
    "location": "Al Wasl 51 Plaza 1 Entrance- Dubai - UAE"
  },
];
List courts = [
  // {"image": MyImages.footballCourt, "title": "5x5 football fields"},
  // {"image": MyImages.footballCourt, "title": "7x7 football fields"},
  {
    "image": MyImages.fullBascketball,
    "title": "Full basketball courts",
    "isSelected": false
  },
  {
    "image": MyImages.halfBascketball,
    "title": "Half basketball courts",
    "isSelected": false
  },
  {
    "image": MyImages.hardTennis,
    "title": "Hard tennis court",
    "isSelected": false
  },
  {
    "image": MyImages.grassTennis,
    "title": "Grass tennis court",
    "isSelected": false
  },
  {
    "image": MyImages.clayTennis,
    "title": "Clay tennis court",
    "isSelected": false
  },
  {
    "image": MyImages.solidVolleyball,
    "title": "Solid ground volleyball",
    "isSelected": false
  },
  {"image": MyImages.squash, "title": "Squash court", "isSelected": false},
  {
    "image": MyImages.regularPool,
    "title": "Regular swimming pool",
    "isSelected": false
  },
  {
    "image": MyImages.olympicPool,
    "title": "Olympic-sized swimming pool.",
    "isSelected": false
  }
];

List stadiumList = [
  {
    "image": MyImages.stadium1,
    "title": "Paddington Recreation Ground",
    "type": "5x5 football fields",
  },
  {
    "image": MyImages.stadium2,
    "title": "Paddington Recreation Ground",
    "type": "7x7 football fields",
  },
  {
    "image": MyImages.stadium3,
    "title": "Paddington Recreation Ground",
    "type": "Full basketball courts",
  },
  {
    "image": MyImages.stadium4,
    "title": "Paddington Recreation Ground",
    "type": "Half basketball courts",
  },
  {
    "image": MyImages.stadium5,
    "title": "Paddington Recreation Ground",
    "type": "Grass tennis court",
  },
  {
    "image": MyImages.stadium6,
    "title": "Paddington Recreation Ground",
    "type": "Hard tennis court",
  },
  {
    "image": MyImages.stadium7,
    "title": "Paddington Recreation Ground",
    "type": "Clay tennis court",
  },
  {
    "image": MyImages.stadium8,
    "title": "Paddington Recreation Ground",
    "type": "Clay tennis court",
  },
  {
    "image": MyImages.stadium9,
    "title": "Paddington Recreation Ground",
    "type": "Beach volleyball",
  },
  {
    "image": MyImages.stadium10,
    "title": "Paddington Recreation Ground",
    "type": "Squash court",
  },
  {
    "image": MyImages.stadium11,
    "title": "Paddington Recreation Ground",
    "type": "Regular swimming pool",
  },
  {
    "image": MyImages.stadium11,
    "title": "Paddington Recreation Ground",
    "type": "Olympic-sized swimming pool",
  }
];
List services = [
  {"icon": MyIcons.kitchenIcon, "title": "healthy meals"},
  {"icon": MyIcons.bathIcon, "title": "Shower"},
  {"icon": MyIcons.snowIcon, "title": "Central A/C"},
  {"icon": MyIcons.clothHangerIcon, "title": "Built in warddrob"},
  {"icon": MyIcons.bathIcon, "title": "Shower"},
  {"icon": MyIcons.shieldIcon, "title": "Security"},
  {"icon": MyIcons.shieldIcon, "title": "Security"},
  {"icon": MyIcons.kitchenIcon, "title": "healthy meals"},
  {"icon": MyIcons.parkIcon, "title": "Parking"},
  {"icon": MyIcons.petIcon, "title": "Pets Allowed"},
];
var greyColor = const Color.fromARGB(255, 250, 250, 250);
var greenColor = const Color.fromARGB(255, 44, 179, 74);
