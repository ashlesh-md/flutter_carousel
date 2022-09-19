import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        // ignore: unnecessary_const
        home: Scaffold(
          appBar: AppBar(title: const Text('Robosoft Technologies')),
          body: Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Center(
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    CarouselSlider(
                      options: CarouselOptions(height: 400.0),
                      items: [
                        'https://images.unsplash.com/photo-1660563115496-8040aa23fc81?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzNHx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
                        'https://images.unsplash.com/photo-1660540949208-d652286542af?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw2Nnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
                        'https://images.unsplash.com/photo-1660481451479-7ad6d6ad0223?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNTR8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
                        'https://images.unsplash.com/photo-1660446118628-cf3d8f507638?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyMDJ8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
                      ].map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                                // width: MediaQuery.of(context).size.width,
                                // margin: EdgeInsets.symmetric(horizontal: 5.0),
                                decoration:
                                    BoxDecoration(color: Colors.transparent),
                                child: Container(
                                  width: double.infinity,
                                  child: Image.network(
                                    '$i',
                                    fit: BoxFit.cover,
                                  ),
                                  // child: TextStyle(fontSize: 16.0),
                                ));
                          },
                        );
                      }).toList(),
                    ),
                    Image.network(
                      // <-- SEE HERE
                      'https://images.unsplash.com/photo-1660563115496-8040aa23fc81?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzNHx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
                      fit: BoxFit.cover,
                    ),
                    Image.network(
                      // <-- SEE HERE
                      'https://images.unsplash.com/photo-1660540949208-d652286542af?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw2Nnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/images/image1.jpg',
                      fit: BoxFit.cover,
                    ),
                    Image.network(
                      // <-- SEE HERE
                      'https://images.unsplash.com/photo-1660481451479-7ad6d6ad0223?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNTR8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
                      fit: BoxFit.cover,
                    ),
                    Image.network(
                      // <-- SEE HERE
                      'https://images.unsplash.com/photo-1660446118628-cf3d8f507638?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyMDJ8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
