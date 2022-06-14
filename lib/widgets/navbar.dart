// ignore_for_file: unnecessary_const, prefer_const_constructors, sort_child_properties_last, use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:study_buddy/screens/feedback.dart';
import 'package:study_buddy/screens/home.dart';
import 'package:study_buddy/screens/login.dart';
import 'package:study_buddy/screens/profile.dart';
import 'package:study_buddy/screens/setting.dart';

import '../services/firebase_services.dart';

class NavDrawer extends StatefulWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  State<NavDrawer> createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0),
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
                color: Colors.teal,
                image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage(
                      'assets/images/study.png',
                    ))),
            child: UserAccountsDrawerHeader(
              accountName:
                  Text("${FirebaseAuth.instance.currentUser!.displayName}"),
              accountEmail: Text("${FirebaseAuth.instance.currentUser!.email}"),
              currentAccountPictureSize: Size.square(50),
              currentAccountPicture: CircleAvatar(
                radius: 30.0,
                backgroundImage:
                    NetworkImage(FirebaseAuth.instance.currentUser!.photoURL!),
                backgroundColor: Colors.transparent,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () async {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.verified_user_sharp),
            title: const Text('Profile'),
            onTap: () async {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () async {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingUI()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.border_color),
            title: const Text('Feedback'),
            onTap: () async {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Feeds()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: ElevatedButton(
              onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text('Crypto Buddy'),
                  content: const Text('Do you really wants to go..'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: const Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () async {
                        await FirebaseServices().signOut();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()),
                        );
                      },
                      child: const Text('Log Out'),
                    ),
                  ],
                ),
              ),
              child: Column(
                children: const [
                  Text(
                    "Logout",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                          side: BorderSide(color: Colors.transparent))),
                  backgroundColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.black26;
                    }
                    return Colors.white;
                  })),
            ),
          ),
        ],
      ),
    );
  }
}
