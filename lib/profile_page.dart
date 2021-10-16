import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const CircleAvatar(
            radius: 70.0,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage(
              'assets/images/avatar.png',
            ),
          ),
          Text(
            'John Smith',
            style: TextStyle(
              fontFamily: 'Pacifico',
              fontSize: 40.0,
              color: Theme.of(context).dialogBackgroundColor,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            'FLUTTER DEVELOPER',
            style: TextStyle(
              fontFamily: 'Source Sans Pro',
              color: Theme.of(context).dialogBackgroundColor.withOpacity(0.6),
              fontSize: 20.0,
              letterSpacing: 2.5,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20.0,
            width: 150.0,
            child: Divider(
              thickness: 2.0,
              color: Colors.teal.shade100,
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: const Icon(
                Icons.badge,
                color: Colors.teal,
              ),
              title: Text(
                '18K-1091',
                style: TextStyle(
                  color: Colors.teal.shade900,
                  fontFamily: 'Source Sans Pro',
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: const Icon(
                Icons.email,
                color: Colors.teal,
              ),
              title: Text(
                'johnsmith@nu.edu.pk',
                style: TextStyle(
                  fontSize: 20.0,
                  letterSpacing: 1.5,
                  color: Colors.teal.shade900,
                  fontFamily: 'Source Sans Pro',
                ),
              ),
            ),
          ),
          // TODO : Add at least 3 or more cards e.g : Phone , Gender , University Name etc.
        ],
      ),
    );
  }
}
