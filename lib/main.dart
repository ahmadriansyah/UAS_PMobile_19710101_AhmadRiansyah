import 'package:flutter/material.dart';
import 'package:uas_19710101/pages/profile.dart';
import 'package:uas_19710101/services/splash.dart';
import 'package:uas_19710101/model/article_model.dart';
import 'package:uas_19710101/services/api_service.dart';
import 'package:uas_19710101/services/navigation.dart';
import 'package:uas_19710101/components/costumlist.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        'Halamanpertama': (BuildContext context) => new navigation(),
        'Halamandua': (BuildContext context) => new Halamandua(),
        'Halamantiga': (BuildContext context) => new Halamantiga(),
        'profile': (BuildContext context) => new profile(),
      },
    );
  }
}

class Halamandua extends StatefulWidget {
  @override
  homepage_technology createState() => homepage_technology();
}
class Halamantiga extends StatefulWidget {
  @override
  homepage_sport createState() => homepage_sport();
}

class homepage_technology extends State<Halamandua> {
  ApiService_technology client = ApiService_technology();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "technology", 
            style: TextStyle(
              fontFamily: 'BebasNeue',
              color: Colors.white,
              ),
            ),
          leading: Icon(Icons.menu, color:Colors.white),
          backgroundColor: Colors.green[300],
        actions:<Widget>[ 
          Icon(Icons.more_vert, color:Colors.white)
        ],
      ),
    body: FutureBuilder(
        future: client.getArticle(),
        builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
          if (snapshot.hasData) {
            List<Article> articles = snapshot.data;
            return ListView.builder(
                itemCount: articles.length,
                itemBuilder: (context, index) =>
                    customListTile(articles[index], context));
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

class homepage_sport extends State<Halamantiga> {
  ApiService_sport client = ApiService_sport();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "SPORT", 
            style: TextStyle(
              fontFamily: 'BebasNeue',
              color: Colors.white,
              ),
            ),
          leading: Icon(Icons.menu, color:Colors.white),
          backgroundColor: Colors.green[300],
        actions:<Widget>[ 
          Icon(Icons.more_vert, color:Colors.white)
        ],
      ),
    body: FutureBuilder(
        future: client.getArticle(),
        builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
          if (snapshot.hasData) {
            List<Article> articles = snapshot.data;
            return ListView.builder(
                itemCount: articles.length,
                itemBuilder: (context, index) =>
                    customListTile(articles[index], context));
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}