import 'package:flutter/material.dart';
import 'package:flutter_straks_dongqi/models/news_model.dart';

class DetailScreen extends StatefulWidget {
  DetailScreen(this.data, {super.key});
  NewsData data;
  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.grey.shade300,
        iconTheme: IconThemeData(color: Colors.orange.shade900),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.data.title!,
              style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              widget.data.date!,
              style: TextStyle(color: Colors.black45),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: Image.network(widget.data.UrlToImage!),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(widget.data.content!),
          ],
        ),
      ),
    );
  }
}
