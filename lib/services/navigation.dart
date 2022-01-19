import 'dart:async';
import 'package:flutter/material.dart';
import 'package:uas_19710101/main.dart';

class navigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "H E A D I N G",
          style: TextStyle(
            fontFamily: 'BebasNeue',
            color: Colors.white,
          ),
        ),
        leading: Icon(Icons.menu, color: Colors.white),
        backgroundColor: Colors.green[300],
        actions: <Widget>[
          Icon(Icons.arrow_drop_down, color:Colors.white),
          Icon(Icons.more_vert, color: Colors.white)],
      ),
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                IconButton(
                  icon: new Icon(
                    Icons.account_tree_rounded,
                    color: Colors.teal[900],
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'Halamandua');
                  },
                  iconSize: 70.0,
                ),
                Text(
                  "technology",
                  style: TextStyle(
                  fontFamily: 'BebasNeue',
                  color: Colors.teal[900]),
                  ),
              ],
            ),

            Column(
              children: [
                IconButton(
                  icon: new Icon(Icons.sports_soccer,
                      color: Colors.teal[900],
                      ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'Halamantiga');
                  },
                  iconSize: 70.0,
                ),
                Text(
                  "Sport",
                  style: TextStyle(
                  fontFamily: 'BebasNeue',
                  color: Colors.teal[900]),
                  ),
              ],
            ),

            Column(
              children: [
                IconButton(
                  icon: new Icon(Icons.assignment_ind_outlined,
                      color: Colors.teal[900]),
                  onPressed: () {
                    Navigator.pushNamed(context, 'profile');
                  },
                  iconSize: 70.0,
                ),
                Text(
                  "Profile",
                  style: TextStyle(
                  fontFamily: 'BebasNeue',
                  color: Colors.teal[900]),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
