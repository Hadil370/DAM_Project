// HomePage class

import 'package:flutter/material.dart';
import 'common_layout.dart';
import 'category_page.dart';
import 'place_list_page.dart';
import 'region.dart';
import 'category.dart';
import 'place.dart';
import 'authentification.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Region & Category Display App',
      theme: ThemeData(
        primaryColor: Colors.blue,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.teal),
        fontFamily: 'Roboto',
      ),
      home: CommonLayout(
        title: 'Explore Places',
        description: 'Discover amazing regions and categories',
        onPressed: () {
          // Action à effectuer lors du clic sur le bouton
        },
        destinationPage: HomePage(), // Spécifiez votre page de destination réelle
      ),
    );
  }
}
class HomePage extends StatelessWidget {
  final List<Region> regions = [
    Region(
      name: 'Constantine',
      image: 'assets/images/constantine.jpg',
      categories: [
        Category(
          name: 'Museums',
          places: [
            Place(
              name: 'Museum Cirta',
              photoUrl: 'assets/images/museum_cirta.jpg',
              description: 'The Cirta Museum, located in Constantine, Algeria, is a historical museum that showcases the rich heritage of the region. The museum is dedicated to preserving and presenting artifacts, exhibits, and collections that illustrate the cultural and historical significance of Constantine',
              userLikes: 10,
              userComments: ['Great museum!', 'Loved the exhibits.'],
            ),
            Place(
              name: 'Museum La Madersa',
              photoUrl: 'assets/images/laMadersa.jpg',
              description: 'Museum La Madersa is another museum located in Constantine, Algeria. It features a unique collection of historical items.',
              userLikes: 5,
              userComments: ['Interesting artifacts.'],
            ),
             Place(
              name: 'Museum El Mujahid',
              photoUrl: 'assets/images/musee_combatant.jpg',
              description: 'The Museum of the Fighter (Musée du Combattant) in Constantine is a museum located in the city of Constantine, Algeria. It is dedicated to the history and memory of the fighters and resistance members who participated in various struggles and conflicts that Algeria faced.',
              userLikes: 5,
              userComments: ['Interesting artifacts.'],
            ),
            // Add other places as needed
          ],
        ),
        Category(
          name: 'Restaurants and Cafes',
          places: [
            Place(
              name: 'Qasar Restaurant',
              photoUrl: 'assets/images/qasar.jpg',
              description: 'Qasar Restaurant in Constantine is a culinary haven that offers a delightful dining experience. Known for its inviting ambiance and excellent service, Qasar is a popular choice for those seeking a taste of local and international cuisine. With a diverse menu featuring mouthwatering dishes, Qasar is a go-to destination for food enthusiasts looking to savor a blend of flavors in the heart of Constantine.',
              userLikes: 8,
              userComments: ['Great food!', 'Excellent service.'],
            ),
            Place(
              name: 'Dar Diaf Restaurant',
              photoUrl: 'assets/images/dardiaf.jpg',
              description: 'Dar Diaf Restaurant is a charming establishment in Constantine that combines tradition with modernity. The restaurant is celebrated for its warm hospitality and a menu that showcases authentic Algerian dishes. Set in an elegant setting, Dar Diaf provides guests with a unique culinary journey, where they can enjoy the finest flavors of local cuisine. Its an ideal choice for those wanting a cultural and gastronomic experience.',
              userLikes: 8,
              userComments: ['Great food!', 'Excellent service.'],
            ),
            Place(
              name: 'La Caleche',
              photoUrl: 'assets/images/caleche.jpg',
              description: 'La Caleche is a distinctive restaurant and café in Constantine, celebrated for its unique character and culinary offerings. The establishment exudes a rustic charm, providing a perfect setting for enjoying delicious meals and aromatic coffees. La Caleche is not just a dining destination; it s an experience that captures the essence of Constantine s cultural and gastronomic diversity.',
              userLikes: 8,
              userComments: ['Great food!', 'Excellent service.'],
            ),
            // Add other places as needed
          ],
        ),
        Category(
          name: 'Historical Sites',
          places: [
            Place(
              name: 'Constantine Suspension Bridges',
              photoUrl: 'assets/images/bridge.jpg',
              description: 'The city is renowned for its breathtaking suspension bridges, including the iconic Sidi MCid Bridge. These engineering marvels offer panoramic views of the Rhumel Gorges and the city itself.',
              userLikes: 12,
              userComments: ['Impressive architecture!', 'Great historical site.'],
            ),
             Place(
              name: 'Palais d Ahmed Bey',
              photoUrl: 'assets/images/ahmed.jpg',
              description: 'Also known as the Ahmed Bey Palace, this historical palace is an architectural gem dating back to the Ottoman era. It reflects the grandeur of that period and serves as a museum today.',
              userLikes: 12,
              userComments: ['Impressive architecture!', 'Great historical site.'],
            ),
               Place(
              name: 'Emir Abdelkader Mosque',
              photoUrl: 'assets/images/amir.jpg',
              description: 'Named after Emir Abdelkader, a prominent Algerian religious and military leader, this mosque is an important religious and historical site in Constantine.',
              userLikes: 12,
              userComments: ['Impressive architecture!', 'Great historical site.'],
            ),
            // Add other places as needed
          ],
        ),
   Category(
          name: 'Hotels',
          places: [
            Place(
              name: 'Marriot Hotel 5 Star',
              photoUrl: 'assets/images/marriothotelconstantine.jpg',
              description: 'Marriott Hotel Constantine exudes luxury and sophistication, offering guests a premium hospitality experience. Situated in the heart of Constantine, this five-star hotel combines modern elegance with panoramic views, providing a refined retreat for business and leisure travelers.',
              userLikes: 20,
              userComments: [''],
            ),
          
          
            Place(
              name: 'Novotel Hotel 4 Star',
              photoUrl: 'assets/images/novotelhotelconstantine.jpg',
              description: 'Novotel Hotel is a contemporary haven for travelers, seamlessly blending modern comforts with a touch of elegance. Situated in a prime location, it caters to both business and leisure guests, ensuring a stylish and comfortable stay with its range of amenities and impeccable service.',
              userLikes: 29,
              userComments: [''],
            ),

            
            Place(
              name: 'The Great Hotel 3 Star',
              photoUrl: 'assets/images/thegreathotelconstantine.jpg',
              description: 'The Great Hotel is a distinguished accommodation in an ideal location, providing guests with a comfortable and welcoming stay. With its convenient amenities and warm hospitality, it offers a pleasant retreat for travelers looking for a quality experience in their chosen destination.',
              userLikes: 12,
              userComments: [''],
            ),
            
          ],
        ),
      ],
    ),
    Region(
      name: 'Algiers',
      image: 'assets/images/alger.jpg',
      categories: [
        Category(
          name: 'Museums',
          places: [
            Place(
              name: 'National Museum of Antiquities',
              photoUrl: 'assets/images/antiqui.jpg',
              description: ' The National Museum of Antiquities in Algiers is a prominent institution that houses a diverse collection of artifacts representing the ancient history of Algeria. The museum showcases archaeological findings, including ceramics, sculptures, jewelry, and other objects from different periods. Visitors can explore exhibits that provide insights into the rich cultural heritage and civilizations that have shaped the region over time.',
              userLikes: 8,
              userComments: ['Beautiful exhibits!', 'A must-visit.'],
            ),
            Place(
              name: 'Bardo National Museum',
              photoUrl: 'assets/images/bardo.jpg',
              description: 'The Bardo National Museum is renowned for its extensive collection of Islamic art and artifacts. The museums exhibits include a wide range of items such as manuscripts, textiles, ceramics, and decorative arts. It serves as a cultural institution dedicated to preserving and presenting the artistic and historical legacy of Islamic civilizations. The Bardo Museum provides visitors with a glimpse into the artistic achievements and cultural contributions of Islamic societies throughout history.',
              userLikes: 8,
              userComments: ['Beautiful exhibits!', 'A must-visit.'],
            ),
            Place(
              name: 'National Museum of Fine Arts of Algiers:',
              photoUrl: 'assets/images/arts.jpg',
              description: 'The National Museum of Fine Arts of Algiers is a significant cultural institution that celebrates and preserves Algerias artistic heritage. The museum is dedicated to showcasing a diverse range of visual arts, including paintings, sculptures, drawings, and other forms of artistic expression. Visitors to the museum can explore collections that reflect the evolution of Algerian art, featuring works by both historical and contemporary artists. The museum plays a crucial role in promoting the appreciation of fine arts and contributing to the cultural enrichment of the community.',
              userLikes: 8,
              userComments: ['Beautiful exhibits!', 'A must-visit.'],
            ),
            // Add other places as needed
          ],
        ),
        Category(
          name: 'Restaurants and Coffees',
          places: [
            Place(
              name: 'EL Djenina restaurant ',
              photoUrl: 'assets/images/jnina.jpg',
              description: 'This restaurant is celebrated for its Algerian cuisine, including traditional dishes and specialties.',
              userLikes: 10,
              userComments: ['Best coffee in town!', 'Lovely ambiance.'],
            ),
            Place(
              name: 'La Perla restaurant ',
              photoUrl: 'assets/images/perla.jpg',
              description: ' A popular restaurant offering a mix of Algerian and international dishes, La Perla is known for its elegant setting and diverse menu.',
              userLikes: 10,
              userComments: ['Best coffee in town!', 'Lovely ambiance.'],
            ),
             Place(
              name: "Cafe L'atelier",
              photoUrl: 'assets/images/atelier.jpg',
              description: 'A cozy cafe known for its coffee, desserts, and casual ambiance, perfect for a relaxing break.',
              userLikes: 10,
              userComments: ['Best coffee in town!', 'Lovely ambiance.'],
            ),
            // Add other places as needed
          ],
        ),
        Category(
          name: 'Historical Sites',
          places: [
            Place(
              name: 'Kasbah of algiers',
              photoUrl: 'assets/images/kasba.jpg',
              description: 'Dans l’un des plus beaux sites maritimes de la Méditerranée, surplombant les îlots où un comptoir carthaginois fut installé dès le IVe siècle av. J.-C., la Casbah constitue un type unique de médina , ou ville islamique. Lieu de mémoire autant que d’histoire, elle comprend des vestiges de la citadelle, des mosquées anciennes, des palais ottomans, ainsi qu’une structure urbaine traditionnelle associée à un grand sens de la communauté.',
              userLikes: 15,
              userComments: ['Fascinating history!', 'Well-preserved site.'],
            ),
               Place(
              name: 'basilique notre-dame d’afrique',
              photoUrl: 'assets/images/bas.jpg',
              description: 'La basilique Notre-Dame-d ’Afrique est l ’une des basiliques mineures de l ’Église catholique. Elle est située dans la commune de Bologhine, à l ’ouest d’ Alger, sur un promontoire dominant la mer de 124 m d’ altitude.',
              userLikes: 15,
              userComments: ['Fascinating history!', 'Well-preserved site.'],
            ),
             Place(
              name: 'mémorial du martyr',
              photoUrl: 'assets/images/martyr.jpg',
              description: 'Le mémorial du Martyr, sanctuaire du Martyr ou Maqam Echahid est un monument aux morts surplombant la ville d’Alger, érigé en 1982 à l’occasion du 20ᵉ anniversaire de l’indépendance de l’Algérie, en mémoire des chahids, les combattants de la guerre d’indépendance algérienne morts pour la libération du pays.',
              userLikes: 15,
              userComments: ['Fascinating history!', 'Well-preserved site.'],
            ),
            
          ],
        ),
     Category(
          name: 'Hotels',
          places: [
            Place(
              name: 'Sheraton Hotel 4.5 Stars',
              photoUrl: 'assets/images/sheratonhoteloran.jpg',
              description: 'Sheraton Hotel in Oran epitomizes refined hospitality with its modern elegance and top-notch services. Situated in a prime location, the hotel offers a luxurious retreat, combining comfort and convenience for both business and leisure travelers visiting Oran',
              userLikes: 20,
              userComments: [''],
            ),
          
          
            Place(
              name: 'Royal Oran Hotel 4 Stars',
              photoUrl: 'assets/images/royalhoteloran.jpg',
              description: 'Royal Hotel Oran stands as a regal destination, embodying luxury and sophistication. Nestled in a prime location, this prestigious hotel offers guests an opulent stay with exquisite accommodations, impeccable service, and breathtaking views, making it a premier choice for those seeking the epitome of hospitality in Oran',
              userLikes: 29,
              userComments: [''],
            ),

            
            Place(
              name: 'Meridien Hotel 3 Stars',
              photoUrl: 'assets/images/meridienhoteloran.jpg',
              description: '"Le Méridien Hotel, synonymous with modern luxury, presents a chic retreat for discerning travelers. With its contemporary design, upscale accommodations, and signature amenities, Le Méridien creates a stylish haven for guests seeking a sophisticated and memorable experience in their chosen destination.',
              userLikes: 12,
              userComments: [''],
            ),
          ],
        ),
      ],
    ),
    Region(
      name: 'Oran',
      image: 'assets/images/oran.jpg',
      categories: [
        Category(
          name: 'Historical Sites',
          places: [
            Place(
              name: 'Château Neuf',
              photoUrl: 'assets/images/chateauneuforan.jpg',
              description: 'Château Neuf, a notable historical site in Oran, Algeria, is a fortress built by the Spanish in the 16th century. This well-preserved structure offers insight into the city s colonial past and features commanding views of the surrounding landscape.',
              userLikes: 18,
              userComments: ['nobel architecture!', 'Amazinggg!'],
            ),
            
            Place(
              name: 'Place of November 1st',
              photoUrl: 'assets/images/Placedu1erNovembreoran.jpg',
              description: 'A central square in Oran, Algeria, commemorating the country independence on November 1, 1954. Dominated by the iconic City Hall, it is a historic and vibrant hub for social and cultural activities.',
              userLikes: 15,
              userComments: ['Impressive place!', 'A visit is a must'],
            ),

             Place(
              name: 'Fort Santa Cruz oran',
              photoUrl: 'assets/images/FortSantaCruzoran.jpg',
              description: 'Perched on a hill overlooking the Bay of Oran, Fort Santa Cruz is a historic fortress dating back to the 16th century, showcasing a blend of Spanish, Ottoman, and French architectural influences.',
              userLikes: 9,
              userComments: ['Gorgeous nature ' ],
            ),
          ],
        ),
        Category(
          name: 'Restaurants and Coffees',
          places: [
             Place(
              name: 'Restaurant Plaza Oran',
              photoUrl: 'assets/images/plazarestooran.jpg',
              description: 'Plaza Restaurant is a welcoming eatery in Oran, known for its diverse menu featuring a mix of local and international cuisines. With a comfortable ambiance, it offers a casual dining experience for visitors to enjoy a variety of flavorful dishes.',
              userLikes: 18,
              userComments: ['Excellent food!' ],
            ),
            
             Place(
              name: 'Restaurant Steak House',
              photoUrl: 'assets/images/steakhouserestooran.jpg',
              description: 'Steak House is a popular dining spot in Oran, celebrated for its focus on high-quality grilled meats. The restaurant offers a cozy setting where patrons can savor delicious steaks and a range of hearty dishes, providing a satisfying experience for meat enthusiasts',
              userLikes: 15,
              userComments: ['Friendly staff.' , 'The sunset with the food was a peice of art'],
            ),

             Place(
              name: 'Restaurant Les Ambassadeurs ',
              photoUrl: 'assets/images/lesambassadeursrestooran.jpg',
              description: 'Les Ambassadeurs Restaurant in Oran is renowned for its exquisite cuisine paired with a breathtaking view. Nestled in a scenic location, diners can enjoy a diverse menu while taking in the stunning vistas, making it a delightful destination for both culinary and visual pleasures',
              userLikes: 19,
              userComments: ['WOW!', 'The view though'],
            ),
          ],
        ),

      
        Category(
          name: 'Beaches',
          places: [
            Place(
              name: 'Les Andalouses Beach',
              photoUrl: 'assets/images/lesandalousesbeach.jpg',
              description: 'Les Andalouses Beach in Oran captivates visitors with its golden sands and azure waters, offering a picturesque seaside escape along the Mediterranean coastline',
              userLikes: 20,
              userComments: ['Best beach ever'],
            ),
             Place(
              name: 'Oran Beach',
              photoUrl: 'assets/images/oranbeach.jpg',
              description: 'Relax on the sandy shores of Oran Beach and enjoy the beautiful coastline.',
              userLikes: 15,
              userComments: ['Crystal clear water.'],
            ),
            
             Place(
              name: 'Madagh Beach',
              photoUrl: 'assets/images/madaghbeach.jpg',
              description: 'Madagh Beach, located near Oran, charms beachgoers with its serene shores, gentle waves, and a tranquil atmosphere, providing a peaceful retreat along the Mediterranean coastline',
              userLikes: 30,
              userComments: ['Beautiful beach!'],
            ),
            // Add other places as needed
          ],
        ), 
         Category(
          name: 'Hotels',
          places: [
            Place(
              name: 'Sheraton Hotel 4.5 Stars',
              photoUrl: 'assets/images/sheratonhoteloran.jpg',
              description: 'Sheraton Hotel in Oran epitomizes refined hospitality with its modern elegance and top-notch services. Situated in a prime location, the hotel offers a luxurious retreat, combining comfort and convenience for both business and leisure travelers visiting Oran',
              userLikes: 20,
              userComments: [''],
            ),
          
          
            Place(
              name: 'Royal Oran Hotel 4 Stars',
              photoUrl: 'assets/images/royalhoteloran.jpg',
              description: 'Royal Hotel Oran stands as a regal destination, embodying luxury and sophistication. Nestled in a prime location, this prestigious hotel offers guests an opulent stay with exquisite accommodations, impeccable service, and breathtaking views, making it a premier choice for those seeking the epitome of hospitality in Oran',
              userLikes: 29,
              userComments: [''],
            ),

            
            Place(
              name: 'Meridien Hotel 3 Stars',
              photoUrl: 'assets/images/meridienhoteloran.jpg',
              description: '"Le Méridien Hotel, synonymous with modern luxury, presents a chic retreat for discerning travelers. With its contemporary design, upscale accommodations, and signature amenities, Le Méridien creates a stylish haven for guests seeking a sophisticated and memorable experience in their chosen destination.',
              userLikes: 12,
              userComments: [''],
            ),
          ],
        ),
      ],
    ),
    Region(
      name: 'Jijel',
      image: 'assets/images/jijel.jpg',
      categories: [
        Category(
          name: 'Beaches',
          places: [
           Place(
              name: 'Grand Plage',
              photoUrl: 'assets/images/grandplagejijel.jpg',
              description: 'Grand Plage is a beautiful beach in Jijel, Algeria. Enjoy the sun, sand, and clear waters in this picturesque coastal destination.',
              userLikes: 10,
              userComments: ['cooll atmosphere'],
            ),
            
            Place(
              name: 'Les Grottes Plage',
              photoUrl: 'assets/images/plagedesgrottesjijel.jpg',
              description: 'Les Grottes in Jijel beckon adventurers with its captivating limestone caves, creating a mesmerizing underground world where stalactites and stalagmites form intricate natural sculptures, offering a unique and awe-inspiring exploration experience.',
              userLikes: 15,
              userComments: ['Relaxing beach!'],
            ),

            Place(
              name: 'Plage Rouge',
              photoUrl: 'assets/images/plagerougejijel.jpg',
              description: 'La Plage Rouge, nestled in a coastal haven, enchants visitors with its vibrant red sands and crystal-clear waters, providing a picturesque and distinct seaside escape near Jijel',
              userLikes: 20,
              userComments: ['Crystal clear water.'],
            ),
            // Add other places as needed
          ],
        ),
        Category(
          name: 'Restaurants and Coffees',
          places: [
             Place(
              name: 'Restaurant A La Cabane',
              photoUrl: 'assets/images/lacabanerestojijel.jpg',
              description: 'A charming rastaurant in Jijel offering a variety of beverages and snacks.',
              userLikes: 20,
              userComments: ['great food'],
            ),

             Place(
              name: 'Pizzeria et cafe',
              photoUrl: 'assets/images/pizzeriaetcoffeejijel.jpg',
              description: 'Pizzeria et Coffee of Jijel is a charming eatery offering a delightful fusion of Italian flavors and aromatic coffee. With a cozy ambiance, its a go-to spot for locals and visitors seeking a savory slice of pizza and a satisfying cup of coffee in the heart of Jijel.',
              userLikes: 19,
              userComments: ['Cozy atmosphere!'],
            ),

             Place(
              name: 'Havana',
              photoUrl: 'assets/images/havanarestojijel.jpg',
              description: 'Havana, a popular venue in Jijel, welcomes patrons with a lively atmosphere, serving a mix of Cuban-inspired dishes and refreshing beverages. Known for its vibrant ambiance, Havana provides a dynamic setting for dining and socializing in the heart of the city',
              userLikes: 12,
              userComments: ['such a good experiance'],
            ),
            // Add other places as needed
          ],
        ),
        Category(
          name: 'Historical Sites',
          places: [
             Place(
              name: 'Caves Of Jijel',
              photoUrl: 'assets/images/cavesofjijel.jpg',
              description: 'The Caves of Jijel are a fascinating natural wonder, characterized by stunning limestone formations and underground chambers. Exploring these caves offers a captivating journey into the region s geological history, with awe-inspiring stalactites and stalagmites creating a mesmerizing subterranean landscape',
              userLikes: 15,
              userComments: ['great tour!'],
            ),
             Place(
              name: 'Jijel City Boat Statue',
              photoUrl: 'assets/images/jijel-city-boat-statue.jpg',
              description: 'The Statue of the Boat in Jijel stands as a maritime symbol, overlooking the coastal city. This art installation pays homage to Jijel s seafaring heritage, offering a picturesque landmark that celebrates the connection between the city and its maritime identity',
              userLikes: 18,
              userComments: ['Well-preserved site.'],
            ),
            Place(
              name: 'Lagre Lighthouse ',
              photoUrl: 'assets/images/lagrelighthousejijel.jpg',
              description: 'The Large Lighthouse in Jijel commands attention with its towering structure along the coastline. Serving as a beacon for maritime navigation, it offers panoramic views of the sea and the city, standing as both a functional landmark and a symbol of maritime safety in Jijel.',
              userLikes: 10,
              userComments: ['Fascinating history!'],
            ),

            // Add other places as needed
          ],
        ),
         Category(
          name: 'Hotels',
          places: [
            Place(
              name: 'Dar Azz Hotel 4 Stars',
              photoUrl: 'assets/images/darazzhotaljijel.jpg',
              description: 'Dar Azz Hotel in Jijel offers a charming retreat with a blend of traditional hospitality and modern comfort. Nestled in a scenic location, the hotel provides a cozy atmosphere, personalized service, and a memorable stay for visitors exploring the beauty of Jijel',
              userLikes: 20,
              userComments: [''],
            ),
          
          
            Place(
              name: 'Jazira Hotel 3 Stars',
              photoUrl: 'assets/images/jazirahoteljijel.jpg',
              description: 'Jazira Hotel, a distinctive establishment in a prime location, combines contemporary comfort with local charm. With well-appointed accommodations and attentive service, the hotel provides a welcoming retreat for travelers seeking a pleasant stay in their exploration of the city.',
              userLikes: 29,
              userComments: [''],
            ),

            
            Place(
              name: 'Kotama Hotel 3 Stars',
              photoUrl: 'assets/images/kotamahoteljijel.jpg',
              description: 'Kotama Hotel in Jijel beckons guests with its modern elegance and warm hospitality. Located in a central area, the hotel offers comfortable accommodations, excellent amenities, and a friendly ambiance, providing a delightful stay for visitors exploring the charms of Jijel',
              userLikes: 12,
              userComments: [''],
            ),
          ],
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explore Places'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topRight,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AuthenticationPage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  elevation: 6.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.person_add),
                    SizedBox(width: 8),
                    Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Colors.white), // Set text color to white
                    ),
                  ],
                ),
              ),
            ),
          ),
          Text(
            'Select a Region',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 30),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              itemCount: regions.length,
              shrinkWrap: true,
               itemBuilder: (context, index) {
    double screenWidth = MediaQuery.of(context).size.width;
    double maxFontSize = 35;
    double minFontSize = 18;
    double fontSize = screenWidth < 600 ? maxFontSize * 0.7 : maxFontSize;

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CategoryPage(region: regions[index]),
          ),
        );
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          ClipOval(
            child: Card(
              elevation: 3,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                child: ClipOval(
                  child: Image.asset(
                    regions[index].image,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                regions[index].name,
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  },
            ),
          ),
        ],
      ),
    );
  }
}