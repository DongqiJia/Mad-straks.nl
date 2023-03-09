import 'package:flutter/material.dart';
import 'package:flutter_straks_dongqi/screens/search.dart';

class Meer extends StatefulWidget {
  const Meer({super.key});

  @override
  State<Meer> createState() => _MeerState();
}

class _MeerState extends State<Meer> {
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
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Binnenland",
                    style: TextStyle(fontSize: 30),
                  )),
              SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Politiek",
                    style: TextStyle(fontSize: 30),
                  )),
              SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Economie",
                    style: TextStyle(fontSize: 30),
                  )),
              SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Cultuur & Media",
                    style: TextStyle(fontSize: 30),
                  )),
              SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Voetbal",
                    style: TextStyle(fontSize: 30),
                  )),
              SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Weer",
                    style: TextStyle(fontSize: 30),
                  )),
              SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Verkeer",
                    style: TextStyle(fontSize: 30),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
