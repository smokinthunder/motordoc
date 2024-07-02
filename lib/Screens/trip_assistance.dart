import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trip Assistance App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ImageGridPage(),
    );
  }
}

class ImageGridPage extends StatelessWidget {
  final List<String> imagePaths = [
    'assets/images/mountains.png',
    'assets/images/beach.png',
    'assets/images/farmlands.png',
    'assets/images/historic.png',
    'assets/images/jungle.png',
    'assets/images/spa.png',
    'assets/images/desert.png',
    'assets/images/island.png',
    'assets/images/urban.png',
    'assets/images/tundra.jpeg',
  ];

  final List<String> imageDescriptions = [
    'Mountains',
    'Beach',
    'Farmlands',
    'Historic',
    'Jungle',
    'Spa',
    'Desert',
    'Island',
    'Urban',
    'Tundra',
  ];

  final List<List<String>> checklists = [
    [
      'Sturdy hiking boots',
      'Backpack',
      'Trekking poles',
      'Map and compass/GPS',
      'First aid kit',
      'High-energy snacks',
      'Water bottle for hydration',
    ],
    [
      'Swimsuit',
      'Beach towel',
      'Sunscreen',
      'Sunglasses',
      'Flip-flops or sandals',
      'Beach umbrella or sunshade',
      'Hat or cap',
    ],
    [
      'Comfortable walking shoes',
      'Hat or cap',
      'Sunscreen',
      'Reusable water bottle',
      'Bug spray',
      'Light, breathable clothing',
    ],
    [
      'Comfortable walking shoes',
      'Guidebook or travel app',
      'Camera',
      'Notepad and pen',
      'Map or GPS',
      'Reusable water bottle',
      'Small backpack',
    ],
    [
      'Lightweight, moisture-wicking clothing',
      'Insect repellent',
      'Sturdy hiking boots',
      'Hat with a wide brim',
      'Reusable water bottle or hydration system',
      'First aid kit',
      'Flashlight or headlamp',
      'Binoculars (for viewing)',
    ],
    [
      'Comfortable loungewear',
      'Swimsuit (for pool or hot tub)',
      'Flip-flops or sandals',
      'Toiletries (toothbrush, deodorant, etc.)',
      'Book or e-reader',
      'Skincare products',
      'Hair ties or headbands',
    ],

    // Desert Landscape
    [
      'Sturdy hiking boots',
      'Backpack',
      'Trekking poles',
      'Map and compass/GPS',
      'First aid kit',
      'High-energy snacks',
      'Water bottle for hydration',
    ],

    // Island Landscape
    [
      'Swimsuit',
      'Beach towel',
      'Sunscreen',
      'Sunglasses',
      'Flip-flops or sandals',
      'Beach umbrella or sunshade',
      'Hat or cap',
    ],

    // Urban Landscape
    [
      'Comfortable walking shoes',
      'Hat or cap',
      'Sunscreen',
      'Reusable water bottle',
      'Bug spray',
      'Light, breathable clothing',
    ],

    // Tundra Landscape
    [
      'Comfortable walking shoes',
      'Guidebook or travel app',
      'Camera',
      'Notepad and pen',
      'Map or GPS',
      'Reusable water bottle',
      'Small backpack',
    ],

    // Jungle Landscape
    [
      'Lightweight, moisture-wicking clothing',
      'Insect repellent',
      'Sturdy hiking boots',
      'Hat with a wide brim',
      'Reusable water bottle or hydration system',
      'First aid kit',
      'Flashlight or headlamp',
      'Binoculars (for viewing)',
    ],

    // Spa Landscape
    [
      'Comfortable loungewear',
      'Swimsuit (for pool or hot tub)',
      'Flip-flops or sandals',
      'Toiletries (toothbrush, deodorant, etc.)',
      'Book or e-reader',
      'Skincare products',
      'Hair ties or headbands',
    ],

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Trip Assistance',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xff191C32), // Matching the body color
        iconTheme: const IconThemeData(
          color: Colors.grey, // Change the back arrow color to grey
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of columns
            crossAxisSpacing: 8.0, // Spacing between columns
            mainAxisSpacing: 8.0, // Spacing between rows
          ),
          itemCount: imagePaths.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TripAssistance(
                      imagePath: imagePaths[index],
                      checklist: checklists[index],
                      title: imageDescriptions[index],
                    ),
                  ),
                );
              },
              child: Column(
                children: [
                  Container(
                    height: 120,
                    margin: const EdgeInsets.all(8.0), // Add margin around each image
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.0), // Rounded edges
                      child: Image.asset(
                        imagePaths[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    imageDescriptions[index],
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
      backgroundColor: const Color(0xff191C32), // Matching the AppBar color
    );
  }
}

class TripAssistance extends StatefulWidget {
  final String imagePath;
  final List<String> checklist;
  final String title;

  const TripAssistance({
    Key? key,
    required this.imagePath,
    required this.checklist,
    required this.title,
  }) : super(key: key);

  @override
  _TripAssistanceState createState() => _TripAssistanceState();
}

class _TripAssistanceState extends State<TripAssistance> {
  late List<bool> _checkedItems;

  @override
  void initState() {
    super.initState();
    _checkedItems = List<bool>.filled(widget.checklist.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff191C32), // Matching the body color
        iconTheme: const IconThemeData(
          color: Colors.grey, // Change the back arrow color to grey
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.8, // Adjusted height based on screen size
              child: Card(
                color: const Color(0xff191C32),
                elevation: 8.0, // Adding elevation for the shadow
                shadowColor: Colors.black, // Matching the AppBar color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                      child: ClipRRect(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(8.0)),
                        child: Image.asset(
                          widget.imagePath,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Items Needed for ${widget.title}',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: List.generate(widget.checklist.length, (index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical:0, horizontal: 16.0), // Adjusted padding
                            child: Container(
                              height: 40, // Adjusted height for checkbox
                              child: CheckboxListTile(
                                contentPadding: EdgeInsets.zero, // Remove internal padding
                                title: Text(
                                  widget.checklist[index],
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                value: _checkedItems[index],
                                onChanged: (value) {
                                  setState(() {
                                    _checkedItems[index] = value!;
                                  });
                                },
                                controlAffinity: ListTileControlAffinity.leading,
                                activeColor: Colors.white,
                                checkColor: Colors.black,
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: const Color(0xff191C32), // Matching the AppBar color
    );
  }
}
