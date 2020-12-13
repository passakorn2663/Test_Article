import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:test_article/image.dart';

class MyHomePage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Center(
        child: Container(
          height: screenHeight / 3,
          child: FutureBuilder<List<ImageList>>(
            future: fetchImageList(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<ImageList> list = snapshot.data;
                List<dynamic> listImages =
                    list.map((i) => new NetworkImage(i.images)).toList();
                return Carousel(
                  images: listImages,
                  autoplay: true,
                  animationDuration: const Duration(milliseconds: 1000),
                  dotSize: 8.0,
                  dotSpacing: 25.0,
                  dotIncreaseSize: 2.0,
                  dotColor: Theme.of(context).bottomAppBarColor,
                  dotBgColor: Colors.grey[800].withOpacity(0.5),
                  showIndicator: true,
                  indicatorBgPadding: 20.0,
                  boxFit: BoxFit.cover,
                  radius: Radius.circular(0.0),
                  overlayShadow: false,
                  overlayShadowColors: Colors.black,
                  overlayShadowSize: 0.5,
                );
              }
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}

Future<List<ImageList>> fetchImageList() async {
  final response =
      await http.get('https://jsonplaceholder.typicode.com/photos?albumId=1');

  String logResponse = response.statusCode.toString();

  if (response.statusCode == 200) {
    print('ResponseStatusCode: $logResponse'); // Check Status Code = 200
    print('ResponseBody: ' + response.body); // Read Data in Array

    List<dynamic> responseJson = json.decode(response.body);

    if (responseJson.length >= 5) {
      responseJson.length = 5;
    }

    return responseJson.map((m) => new ImageList.fromJson(m)).toList();
  }
}
