import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/details.dart';
import 'package:state_management/logic_controller.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            ListTile(title: Text("Count value:")),
            ListTile(
              title: Text("This is title"),
            ),
            ListTile(
              title: Text("This is title"),
            )
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<LogicController>(builder: (ctx, logic, index) {
              return Text("Flutter Counter ${logic.number}");
            }),
            Consumer<LogicController>(builder: (context, logic, index) {
              return Text("Third number Counter:${logic.thirdNumber}");
            }),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Route route =
                    MaterialPageRoute(builder: (ctx) => DetailsScreen());
                Navigator.push(context, route);
              },
              child: Text("Click"),
            )
          ],
        ),
      ),
      floatingActionButton:
          Consumer<LogicController>(builder: (context, logic, index) {
        return FloatingActionButton(
          onPressed: () {
            logic.count();
          },
          child: Icon(Icons.add),
        );
      }),
    );
  }
}
