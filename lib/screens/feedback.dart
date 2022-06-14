import 'package:flutter/material.dart';
import 'package:study_buddy/widgets/navbar.dart';

class Feeds extends StatelessWidget {
  const Feeds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback'),
      ),
      drawer: NavDrawer(),
      body: Center(
        child: Container(
          height: 200,
          width: double.infinity,
          child: Form(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.feedback_outlined),
                  hintText: 'Give us Feedback',
                  labelText: 'Feedback',
                ),
              ),
              ElevatedButton(onPressed: null, child: Text('Send')),
            ],
          )),
        ),
      ),
    );
  }
}
