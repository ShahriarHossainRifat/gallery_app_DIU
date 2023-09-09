import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // List of image URLs for the gallery
  final List<String> imageUrls = [
    'https://source.unsplash.com/400x400/?landscape',
    'https://source.unsplash.com/400x400/?nature',
    'https://source.unsplash.com/400x400/?city',
    'https://source.unsplash.com/400x400/?travel',
    'https://source.unsplash.com/400x400/?food',
    'https://source.unsplash.com/400x400/?architecture',
    'https://source.unsplash.com/400x400/?technology',
    'https://source.unsplash.com/400x400/?animal',
    'https://source.unsplash.com/400x400/?fashion',
    'https://source.unsplash.com/400x400/?sports',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery App'),
      ),
      drawer: Drawer(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        'https://source.unsplash.com/200x200/?portrait'),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Shahriar Hossain Rifat',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'shahriar15-3325@diu.edu.bd',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Tangail, Bangladesh',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            // Add more items to the sidebar as needed
          ],
        ),
      ),
      body: GridView.builder(
        itemCount: imageUrls.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.all(8.0), // Add padding around each image
            child: Image.network(
              imageUrls[index],
              fit: BoxFit.cover,
            ),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.call),
              onPressed: () {
                // Implement call button action here
              },
            ),
            IconButton(
              icon: Icon(Icons.message),
              onPressed: () {
                // Implement message button action here
              },
            ),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                // Implement profile button action here
              },
            ),
          ],
        ),
      ),
    );
  }
}
