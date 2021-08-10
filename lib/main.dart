import 'package:finalproject/companies/listviweh.dart';
import 'package:finalproject/pages/cart.dart';
import 'package:finalproject/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

import 'companies/products.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

// class MyApp extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     return _MyApp();
//   }
// }

// class _MyApp extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     Widget image_carousel = new Container(
//       height: 200.0,
//       child: Carousel(
//         boxFit: BoxFit.cover,
//         images: [
//           AssetImage('image/f.png'),
//           AssetImage('image/oo.jpg'),
//           AssetImage('image/t.jpg'),
//           AssetImage('image/tt.jpg'),
//         ],
//         autoplay: false,
//         animationCurve: Curves.fastOutSlowIn,
//         animationDuration: Duration(milliseconds: 1000),
//         indicatorBgPadding: 8.0,
//       ),
//     );
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0.1,
//         backgroundColor: Colors.red,
//         title: Text("Fashion"),
//         actions: [
//           IconButton(
//             onPressed: () {},
//             icon: Icon(Icons.search, color: Colors.white),
//           ),
//           IconButton(
//             onPressed: () {
//               Navigator.push(
//                   context, MaterialPageRoute(builder: (context) => cart()));
//             },
//             icon: Icon(Icons.shopping_cart, color: Colors.white),
//           ),
//         ],
//       ),
//       drawer: Drawer(
//         child: ListView(
//           children: [
//             UserAccountsDrawerHeader(
//               accountName: Text("Matjary"),
//               accountEmail: Text("Matjare11M@gmail.com"),
//               currentAccountPicture: GestureDetector(
//                 child: CircleAvatar(
//                   backgroundColor: Colors.grey[500],
//                   child: Icon(
//                     Icons.person,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//               decoration: BoxDecoration(
//                 color: Colors.red,
//               ),
//             ),
//             InkWell(
//               onTap: () {},
//               child: ListTile(
//                 title: Text("Home"),
//                 leading: Icon(
//                   Icons.home,
//                   color: Colors.green,
//                 ),
//               ),
//             ),
//             InkWell(
//               onTap: () {},
//               child: ListTile(
//                 title: Text("MY account"),
//                 leading: Icon(
//                   Icons.person,
//                   color: Colors.pink,
//                 ),
//               ),
//             ),
//             InkWell(
//               onTap: () {
//                 Navigator.push(
//                     context, MaterialPageRoute(builder: (context) => cart()));
//               },
//               child: ListTile(
//                 title: Text("My order"),
//                 leading: Icon(
//                   Icons.shopping_cart,
//                   color: Colors.blue,
//                 ),
//               ),
//             ),
//             InkWell(
//               onTap: () {},
//               child: ListTile(
//                 title: Text("categories"),
//                 leading: Icon(
//                   Icons.dashboard,
//                   color: Colors.purple,
//                 ),
//               ),
//             ),
//             InkWell(
//               onTap: () {},
//               child: ListTile(
//                 title: Text("Favourites"),
//                 leading: Icon(
//                   Icons.favorite,
//                   color: Colors.red,
//                 ),
//               ),
//             ),
//             InkWell(
//               onTap: () {},
//               child: ListTile(
//                 title: Text("about"),
//                 leading: Icon(
//                   Icons.help,
//                   color: Colors.blueAccent,
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//       body: ListView(
//         children: [
//           image_carousel,
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text('Categories'),
//           ),
//           listviewh(),
//           Padding(
//             padding: const EdgeInsets.all(17.0),
//             child: Text('Recent products'),
//           ),
//           Container(
//             height: 320.0,
//             child: Products(),
//           )
//         ],
//       ),
//     );
//   }
// }
