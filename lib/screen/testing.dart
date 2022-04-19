import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pilgrimage_app/dbHelper/mongodb.dart';

import '../dbHelper/MongoDbModel.dart';
import '../widgets/nav_bar.dart';

class MongoDisplay extends StatefulWidget {
  const MongoDisplay({Key? key}) : super(key: key);

  @override
  State<MongoDisplay> createState() => _MongoDisplayState();
}

class _MongoDisplayState extends State<MongoDisplay> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final _pageController = PageController(viewportFraction: 1.2);
    return Scaffold(
      bottomNavigationBar: NavBar(),
      body: SafeArea(
          child: FutureBuilder(
              future: MongoDB.getData(),
              builder: (context, AsyncSnapshot snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  if (snapshot.hasData) {
                    var totalData = snapshot.data.length;
                    print("total data" + totalData.toString());
                    return ListView.builder(
                        itemCount: snapshot.data.length,
                        itemBuilder: (context, index) {
                          return displayCard(
                              MongoDbModel.fromJson(snapshot.data[index]));
                        });
                  } else {
                    return Center(
                      child: Text('No Data Available'),
                    );
                  }
                }
              })),
    );
  }

  Widget displayCard(MongoDbModel data) {
    return Card(
        child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("${data.id}"),
                SizedBox(
                  height: 5,
                ),
                Text("${data.title}"),
                SizedBox(
                  height: 5,
                ),
                Text("${data.description}"),
                SizedBox(
                  height: 5,
                ),
                Image.network(
                  data.image,
                  // width: 100,
                  // height: 100,
                  fit: BoxFit.cover,
                ),
              ],
            )));
  }
}
