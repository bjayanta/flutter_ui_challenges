import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto',),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late PageController _pageController;
  int totalPage = 8;

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    )..addListener(() {
      print("Working!");
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          makePage(title: 'Mymensingh', image: 'assets/images/one.jpg', description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', page: 1),
          makePage(title: 'Kachari Road', image: 'assets/images/two.jpg', description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.', page: 2),
          makePage(title: 'Muktagasa', image: 'assets/images/three.jpeg', description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took.', page: 3),
          makePage(title: 'Akua', image: 'assets/images/four.jpg', description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.', page: 4),
          makePage(title: 'Jubli Ghat', image: 'assets/images/five.jpeg', description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make.', page: 5),
          makePage(title: 'Bipen Park', image: 'assets/images/six.jpg', description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', page: 6),
          makePage(title: 'University', image: 'assets/images/seven.jpg', description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', page: 7),
          makePage(title: 'Netrokona', image: 'assets/images/eight.jpg', description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry.', page: 8),
        ],
      ),
    );
  }

  Widget makePage({title, image, description, page}) {
    return Container(
      // color: Colors.blue,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            stops: [0.3, 0.9],
            colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.2),
            ],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(page.toString(), style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),),
                  Text('/' + totalPage.toString(), style: TextStyle(color: Colors.white, fontSize: 16,),),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: TextStyle(fontSize: 48, color: Colors.white, fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Container(
                          child: Icon(Icons.star, color: Colors.yellow, size: 15,),
                          margin: EdgeInsets.only(right: 3),
                        ),
                        Container(
                          child: Icon(Icons.star, color: Colors.yellow, size: 15,),
                          margin: EdgeInsets.only(right: 3),
                        ),
                        Container(
                          child: Icon(Icons.star, color: Colors.yellow, size: 15,),
                          margin: EdgeInsets.only(right: 3),
                        ),
                        Container(
                          child: Icon(Icons.star, color: Colors.yellow, size: 15,),
                          margin: EdgeInsets.only(right: 3),
                        ),
                        Container(
                          child: Icon(Icons.star, color: Colors.grey, size: 15,),
                          margin: EdgeInsets.only(right: 3),
                        ),
                        Text('4.0', style: TextStyle(color: Colors.white70),),
                        Text('(2378)', style: TextStyle(color: Colors.white38, fontSize: 10),),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Text(description, style: TextStyle(color: Colors.white.withOpacity(0.7), height: 1.3),),
                    SizedBox(height: 20,),
                    Text('READ MORE', style: TextStyle(color: Colors.white,),),
                    SizedBox(height: 30,),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

