import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 10, bottom: 10),
                child: Text(
                  "Premiers",
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              SizedBox(
                  height: 260,
                  child: PageView(scrollDirection: Axis.horizontal, pageSnapping: true, children: <Widget>[
                    CardFav("assets/10.jpg", "Big Hero 6", "2014", "4.5"),
                    CardFav("assets/11.png", "Frozen 2", "2019", "4.4"),
                    CardFav("assets/10.jpg", "Big Hero 6", "2014", "4.5"),
                    CardFav("assets/11.png", "Frozen 2", "2019", "4.4"),
                    CardFav("assets/10.jpg", "Big Hero 6", "2014", "4.5"),
                    CardFav("assets/11.png", "Frozen 2", "2019", "4.4"),
                  ])),
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 10, bottom: 10),
                child: Text(
                  "In this week",
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Expanded(
                flex: 10,
                child: ListView(scrollDirection: Axis.vertical, children: <Widget>[
                  listCard("assets/1.jpg", "Abominable", "4.3", "2019", "Tito Predovic", "110"),
                  listCard("assets/2.jpg", "How to train your dragon", "3.3", "2019", "Jacynthe Lubowits", "110"),
                  listCard("assets/3.jpg", "Speakers", "4.6", "2020", "Irene Amato", "110"),
                  listCard("assets/4.png", "Birds of prey", "5.0", "2019", "Tito Predovic", "110"),
                  listCard("assets/1.jpg", "Abominable", "4.3", "2019", "Tito Predovic", "110"),
                  listCard("assets/2.jpg", "How to train your dragon", "3.3", "2019", "Jacynthe Lubowits", "110"),
                  listCard("assets/3.jpg", "Speakers", "4.6", "2020", "Irene Amato", "110"),
                  listCard("assets/4.png", "Birds of prey", "5.0", "2019", "Tito Predovic", "110"),
                  listCard("assets/1.jpg", "Abominable", "4.3", "2019", "Tito Predovic", "110"),
                  listCard("assets/2.jpg", "How to train your dragon", "3.3", "2019", "Jacynthe Lubowits", "110"),
                  listCard("assets/3.jpg", "Speakers", "4.6", "2020", "Irene Amato", "110"),
                  listCard("assets/4.png", "Birds of prey", "5.0", "2019", "Tito Predovic", "110"),
                  listCard("assets/1.jpg", "Abominable", "4.3", "2019", "Tito Predovic", "110"),
                  listCard("assets/2.jpg", "How to train your dragon", "3.3", "2019", "Jacynthe Lubowits", "110"),
                  listCard("assets/3.jpg", "Speakers", "4.6", "2020", "Irene Amato", "110"),
                  listCard("assets/4.png", "Birds of prey", "5.0", "2019", "Tito Predovic", "110"),
                ]),
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: (i) {
              setState(() {
                index = i;
              });
            },
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: Colors.amber,
            currentIndex: index,
            items: [
              BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.ondemand_video,
                    color: Colors.purple.shade700,
                    size: 35,
                  ),
                  icon: Icon(
                    Icons.ondemand_video,
                    color: Colors.black12,
                    size: 35,
                  ),
                  title: Text('')),
              BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.camera_roll_outlined,
                    color: Colors.purple.shade700,
                    size: 35,
                  ),
                  icon: Icon(
                    Icons.camera_roll_outlined,
                    color: Colors.black12,
                    size: 35,
                  ),
                  title: Text('')),
              BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.search,
                    color: Colors.purple.shade700,
                    size: 35,
                  ),
                  icon: Icon(
                    Icons.search,
                    color: Colors.black12,
                    size: 35,
                  ),
                  title: Text('')),
              BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.format_align_justify,
                    color: Colors.purple.shade700,
                    size: 35,
                  ),
                  icon: Icon(
                    Icons.format_align_justify,
                    color: Colors.black12,
                    size: 35,
                  ),
                  title: Text('')),
            ],
          )),
    );
  }

  SizedBox listCard(String img, String title, String rate, String year, String desc, String min) {
    return SizedBox(
      height: 100,
      child: Card(
        elevation: 1,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              SizedBox(
                  width: 100,
                  child: Stack(children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(img, height: 75, width: 75, fit: BoxFit.cover),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Row(
                          children: [
                            Expanded(flex: 15, child: Container()),
                            Icon(
                              Icons.star_rate,
                              color: Colors.amber,
                              size: 15,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              rate,
                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                            Expanded(flex: 50, child: Container()),
                          ],
                        ),
                      ),
                    )
                  ])),
              Expanded(
                  // flex: 12,
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Text(desc, style: TextStyle(fontSize: 16, color: Colors.grey)),
                      SizedBox(
                        width: 5,
                      ),
                      Text("●", style: TextStyle(fontSize: 16, color: Colors.grey)),
                      SizedBox(
                        width: 5,
                      ),
                      Text(year, style: TextStyle(fontSize: 16, color: Colors.grey)),
                      SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Text("${min} min", style: TextStyle(fontSize: 14, color: Colors.grey)),
                  SizedBox(height: 4),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }

  Padding CardFav(String img, String title, String year, String rate) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(img, height: 180, width: double.infinity, fit: BoxFit.cover),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.star_rate,
                        color: Colors.amber,
                        size: 15,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        rate,
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              )
            ]),
            SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              year,
              style: TextStyle(color: Colors.grey, fontSize: 15),
            )
          ],
        ));
  }
}
