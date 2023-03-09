import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_straks_dongqi/components/breaking_news_card.dart';
import 'package:flutter_straks_dongqi/components/news_list_tile.dart';
import 'package:flutter_straks_dongqi/models/news_model.dart';
import 'package:flutter_straks_dongqi/screens/search.dart';

class Laatste extends StatefulWidget {
  const Laatste({super.key});

  @override
  State<Laatste> createState() => _LaatsteState();
}

class _LaatsteState extends State<Laatste> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.grey.shade300,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Search()));
            },
            icon: Icon(
              Icons.search,
              color: Colors.black,
            )),
        title: Text(
          "Straks",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Column(
                children: NewsData.recentNewsData
                    .map((e) => NewsListTile(e))
                    .toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
