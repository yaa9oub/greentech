import 'package:flutter/material.dart';
import 'package:greentech/annoucement.dart';
import 'package:greentech/collection.dart';
import 'package:greentech/predictions.dart';
import 'package:greentech/signin.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Menu',
              style: TextStyle(fontSize: 25.0),
            ),
          ),
          ListTile(
            title: const Text('Announcement'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Annoucement()),
              );
            },
          ),
          ListTile(
            title: const Text('Data Collecting'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Collection()),
              );
            },
          ),
          ListTile(
            title: const Text('Predictions'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Predictions()),
              );
            },
          ),
          ListTile(
            title: const Text('Logout'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SignIn()),
              );
            },
          ),
        ],
      ),
    );
  }
}
