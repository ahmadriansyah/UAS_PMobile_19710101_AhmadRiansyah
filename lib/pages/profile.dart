import 'package:flutter/material.dart';
import 'package:uas_19710101/main.dart';

class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[300],
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 70.0,
            backgroundImage: AssetImage('assets/img/rian.jpg'),
          ),
          Text(
            "",
            style: TextStyle(
              fontFamily: 'Cookie',
              color: Colors.white,
              fontSize: 10,
            ),
          ),
          Text(
            "Ahmad Riansyah",
            style: TextStyle(
              fontFamily: 'Cookie',
              color: Colors.teal[900],
              fontSize: 35,
            ),
          ),
          Text(
            "19710101",
            style: TextStyle(
              fontFamily: 'BebasNeue',
              color: Colors.teal[900],
              fontSize: 20,
              letterSpacing: 2.5,
            ),
          ),
          SizedBox(
            height: 50.0,
            width: 150.0,
            child: Divider(
              color: Colors.white,
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: Icon(
                Icons.account_balance,
                color: Colors.green[900],
              ),
              title: Text(
                "Kelas  : 5A SI Reg Banjarbaru",
                style: TextStyle(
                  fontFamily: 'BebasNeue',
                  color: Colors.teal[900],
                  ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: Icon(
                Icons.call,
                color: Colors.green[900],
              ),
              title: Text(
                "Kontak   : 0821-4346-4853",
                style: TextStyle(
                  fontFamily: 'BebasNeue',
                  color: Colors.teal[900],
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.green[900],
              ),
              title: Text(
                "Alamat : Desa Pinggir Ilir, Kec.Astambul ",
                style: TextStyle(
                  fontFamily: 'BebasNeue',
                  color: Colors.teal[900],
                  ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}