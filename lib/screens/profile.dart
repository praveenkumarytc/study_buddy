import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:study_buddy/widgets/navbar.dart';
import 'package:study_buddy/screens/home.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: NavDrawer(),
      body: SafeArea(
          child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/study.png'),
                  fit: BoxFit.cover),
            ),
            child: Container(
              width: double.infinity,
              height: 200,
              child: Container(
                alignment: Alignment(0.0, 2.5),
                child: CircleAvatar(
                  radius: 75,
                  backgroundColor: Colors.green,
                  child: CircleAvatar(
                    radius: 68,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          FirebaseAuth.instance.currentUser!.photoURL!),
                      radius: 60.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 60),
          Text("${FirebaseAuth.instance.currentUser!.displayName}",
              style: const TextStyle(
                  fontSize: 25.0,
                  color: Colors.blueGrey,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.w400))
        ],
      )),
    );
  }
}
