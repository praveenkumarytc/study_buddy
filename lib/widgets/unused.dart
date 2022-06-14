// automaticallyImplyLeading: false,
//         title: Padding(
//           padding: EdgeInsets.all(4),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: <Widget>[
//               PopupMenuButton(
//                 icon: Icon(Icons.menu),
//                 itemBuilder: (BuildContext context) => <PopupMenuEntry>[
//                   PopupMenuItem(
//                     child: ListTile(
//                       leading: Icon(Icons.logout_outlined),
//                       title: ElevatedButton(
//                         onPressed: () async {
//                           await FirebaseServices().signOut();
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => LoginScreen()),
//                           );
//                         },
//                         child: Column(
//                           children: const [
//                             Text(
//                               "Logout",
//                               style: TextStyle(color: Colors.black),
//                             ),
//                           ],
//                         ),
//                         style: ButtonStyle(
//                             shape: MaterialStateProperty.all<
//                                     RoundedRectangleBorder>(
//                                 RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(18),
//                                     side:
//                                         BorderSide(color: Colors.transparent))),
//                             backgroundColor:
//                                 MaterialStateProperty.resolveWith((states) {
//                               if (states.contains(MaterialState.pressed)) {
//                                 return Colors.black26;
//                               }
//                               return Colors.white;
//                             })),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               Text(
//                 "${FirebaseAuth.instance.currentUser!.displayName}",
//               ),
//               CircleAvatar(
//                 backgroundImage:
//                     NetworkImage(FirebaseAuth.instance.currentUser!.photoURL!),
//                 radius: 27,
//               ),
//             ],
//           ),
//         ),