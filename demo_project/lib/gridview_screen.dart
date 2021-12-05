import 'package:flutter/material.dart';

class GridViewScreen extends StatelessWidget {
  static const String path = "GridViewScreen";
  const GridViewScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GridView"),),
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        childAspectRatio: 6 / 5,
        crossAxisSpacing: 20,
        padding: EdgeInsets.all(20),
        children: [
          Card(
            child: Container(
              color: Colors.orange,
              child: FlutterLogo(),
            )
          ),
          Card(
            child:Container(
              color: Colors.green,
              child: FlutterLogo(),
            )
          ),
          Card(
            child: Container(
              color: Colors.pink,
              child: FlutterLogo(),
            )
          ),
          Card(
            child: Container(
              color: Colors.red,
              child: FlutterLogo(),
            )
          ),
        ],
      ),
    );
  }
}



// import 'package:flutter/material.dart';

// class GridViewScreen extends StatelessWidget {
//   static const String path = "GridViewScreen";

//   List color = [
//     Colors.orange,
//     Colors.red,
//     Colors.pink,
//     Colors.purple,
//     Colors.yellow
//   ];
//   List icon = [
//     Icons.help_outline,
//     Icons.home,
//     Icons.favorite,
//     Icons.settings,
//     Icons.rate_review_outlined
//   ];


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("GridView"),),
//       body: GridView.count(
//         crossAxisCount: 2,
//         mainAxisSpacing: 20,
//         crossAxisSpacing: 20,
//         padding: EdgeInsets.all(20),
//         children: List.generate(5, (index) {
//           return Card(
//             child: Container(
//               color: color[index],
//               child: Icon(icon)
//             )
//           );
//         })
//       ),
//     );
//   }
// }