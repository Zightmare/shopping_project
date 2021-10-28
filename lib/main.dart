import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shopping_project/Provider/Products.dart';
import 'package:shopping_project/Screens/LoginScreen.dart';

import '/Component/TextComponent.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (ctx) => Products(),
      child: MaterialApp(
        // debugShowCheckedModeBanner: false,
        home: LoginScreen(),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCount();
  }

  void getCount() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      count = prefs.getInt("counter") ?? 0;
    });
  }

  void incresment() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      count++;
      prefs.setInt("counter", count).then((bool success) {
        print(" it's $success");
        return count;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back), // icon for future button back
        title: Center(
          child: Text(" my First App"), // icon for title
        ),
        actions: [
          //  Multi-Icon Buttons
          Icon(Icons.arrow_forward),
          IconButton(onPressed: () => getCount(), icon: Icon(Icons.circle)),
          Icon(Icons.arrow_back)
        ],
        bottom: PreferredSize(
          // PreferredSize  to draw a line on AppBar button
          preferredSize: Size.fromHeight(5),
          child: Container(
            height: 5,
            color: Colors.red,
          ),
        ),
        backgroundColor: Colors.orange, // Appbar background color
        // flexibleSpace: Image(
        //   image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/f/f6/Flag_of_Iraq.svg/255px-Flag_of_Iraq.svg.png"),
        //   fit: BoxFit.fill,
        // ),
      ),
      body: Center(
          child: Column(
        children: [
          TextComponent("this is my $count", Colors.orange, 18),
          SizedBox(
            height: 100,
          ),
          TextComponent(" my Text in this app ", Colors.black, 30)
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          incresment();
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.orange,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 50,
          // color: Colors.yellowAccent,
        ),
      ),
    );
  }
}
