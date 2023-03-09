import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_straks_dongqi/components/breaking_news_card.dart';
import 'package:flutter_straks_dongqi/components/news_list_tile.dart';
import 'package:flutter_straks_dongqi/models/news_model.dart';
import 'package:flutter_straks_dongqi/screens/search.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
              Text(
                "Belangrijk Nieuws",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CarouselSlider.builder(
                itemCount: NewsData.breakingNewsData.length,
                itemBuilder: (context, index, id) =>
                    BreakingNewsCard(NewsData.breakingNewsData[index]),
                options: CarouselOptions(
                  aspectRatio: 16 / 9,
                  enableInfiniteScroll: false,
                  enlargeCenterPage: true,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Recent Nieuws",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 9,
              ),
              Column(
                children: NewsData.recentNewsData
                    .map((e) => NewsListTile(e))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
      
    );
  }
}
