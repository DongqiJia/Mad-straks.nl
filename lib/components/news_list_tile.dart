import 'package:flutter/material.dart';

import 'package:flutter_straks_dongqi/models/news_model.dart';
import 'package:flutter_straks_dongqi/screens/detail_screen.dart';

class NewsListTile extends StatefulWidget {
  NewsListTile(this.data, {Key? key}) : super(key: key);
  NewsData data;
  @override
  State<NewsListTile> createState() => _NewsListTileState();
}

class _NewsListTileState extends State<NewsListTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailScreen(widget.data),
            ));
      },
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(bottom: 10),
        padding: EdgeInsets.all(6),
        height: 110,
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(26),
        ),
        child: Row(
          children: [
            Flexible(
              child: Container(
                height: 100.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: NetworkImage(widget.data.UrlToImage!),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
            Flexible(
              flex: 2,
              child: Column(
                children: [
                  Text(
                    widget.data.title!,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    widget.data.content!,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.black45,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
